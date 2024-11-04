import 'package:c2s/data/json_data/entries_response_data.dart';
import 'package:c2s/domain/repositories/abstract_auth_repo.dart';
import 'package:c2s/domain/repositories/abstract_entries_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final AbstractEntriesRepo entryRepository;
  final AbstractAuthRepository authRepository;

  HomeBloc(this.entryRepository, this.authRepository) : super(HomeState()) {
    on<LoadEntries>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      try {
        EntriesResponseData? entriesResponse =
            await entryRepository.getEntries(event.token);
        if (entriesResponse == null || entriesResponse.data.entries.isEmpty) {
          emit(state.copyWith(isEmpty: true));
        } else {
          emit(
              state.copyWith(entriesResponse: entriesResponse, isEmpty: false));
        }
      } catch (e) {
        emit(state.copyWith(
            loadingErrMessage:
                'Network error, Try connecting to an active Network',
            isEmpty: true));
      }
      emit(state.copyWith(isLoading: false));
    });

    on<LogoutClicked>((event, emit) async {
      try {
        await authRepository.logout();
        emit(state.copyWith(isLogout: true));
      } catch (e) {
        emit(state.copyWith(
            loadingErrMessage:
                'Network error, Try connecting to an active Network'));
        Future.delayed(Duration(milliseconds: 500));
        emit(state.copyWith(loadingErrMessage: null));
      }
    });

    on<SortClicked>((event, emit) async {
      EntriesResponseData? sortedEntries = state.entriesResponse;
      sortedEntries?.data.entries.sort((a, b) =>
          DateTime.parse(a.date.toString())
              .compareTo(DateTime.parse(b.date.toString())));
      emit(state.copyWith(entriesResponse: sortedEntries, isLoading: true));
      emit(state.copyWith(isLoading: false));
    });
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
