import 'package:c2s/data/json_data/entries_response_data.dart';
import 'package:c2s/domain/repositories/abstract_auth_repo.dart';
import 'package:c2s/domain/repositories/abstract_entries_repo.dart';
import 'package:c2s/presentation/screens/form%20screens/form_screen2.dart';
import 'package:c2s/presentation/screens/form%20screens/form_screen3.dart';
import 'package:c2s/presentation/screens/form%20screens/form_screen4.dart';
import 'package:c2s/presentation/screens/form%20screens/form_screen5.dart';
import 'package:c2s/presentation/screens/form%20screens/form_screen6.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final AbstractEntriesRepo entryRepository;
  final AbstractAuthRepository authRepository;

  HomeBloc(this.entryRepository, this.authRepository) : super(InitialState()) {
    EntriesResponseData? entriesResponse;
    on<LoadEntries>((event, emit) async {
      emit(LoadingState());
      while (true) {
        try {
          entriesResponse = await entryRepository.getEntries(event.token);
          if (entriesResponse == null ||
              entriesResponse!.data.entries.isEmpty) {
            emit(EmptyState());
          } else {
            emit(LoadedState(entriesResponse!));
          }
          break;
        } catch (e) {
          emit(LoadingErrorState(
              'Network error, Try connecting to an active Network'));
        }
        await Future.delayed(Duration(seconds: 5));
      }
    });
    on<LogoutClicked>((event, emit) async {
      if (await checkNetwork()) {
        await authRepository.logout();
        emit(LogoutState());
      } else {
        emit(LogoutErrorState());
        await Future.delayed(Duration(milliseconds: 500));
        emit(ErrorState('Network error, Try connecting to an active Network',
            entriesResponse!));
      }
    });

    on<SortClicked>((event, emit) async {
      EntriesResponseData? sortedEntries = entriesResponse;
      sortedEntries?.data.entries.sort((a, b) =>
          DateTime.parse(a.date.toString())
              .compareTo(DateTime.parse(b.date.toString())));
      emit(SortState(sortedEntries!));
    });

    on<CreateNewEntry>((event, emit) async {
      if (await checkNetwork()) {
        emit(NewEntryState());
      } else {
        emit(ErrorState('Network error, Try connecting to an active Network',
            entriesResponse!));
      }
    });

    on<EditExistingEntry>((event, emit) async {
      if (await checkNetwork()) {
        Widget screen = FormScreen2(id: event.entryId);
        if (event.progressValue == 2) screen = FormScreen3(id: event.entryId);
        if (event.progressValue == 3) screen = FormScreen4(id: event.entryId);
        if (event.progressValue == 4) screen = FormScreen5(id: event.entryId);
        if (event.progressValue == 5) screen = FormScreen6(id: event.entryId);
        emit(EditEntryState(event.entryId, screen));
      } else {
        emit(ErrorState('Network error, Try connecting to an active Network',
            entriesResponse!));
      }
    });
  }

  Future<bool> checkNetwork() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult.first == ConnectivityResult.mobile ||
        connectivityResult.first == ConnectivityResult.wifi) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void onChange(Change<HomeState> change) {
    super.onChange(change);
    print(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    print(
        '>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>$error');
  }
}
