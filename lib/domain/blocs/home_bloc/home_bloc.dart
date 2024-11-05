import 'package:c2s/data/models/get_all_entries_models/get_entries_response_data/get_entries_response_data.dart';
import 'package:c2s/domain/repositories/abstract_auth_repo.dart';
import 'package:c2s/domain/repositories/abstract_entries_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/models/get_all_entries_models/entry/entry.dart';
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
      Future.delayed(Duration(seconds: 5));
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
      EntriesResponseData? sortedEntries = state.entriesResponse?.copyWith();
      if (sortedEntries != null) {
        List<Entry> sortedList = List.from(sortedEntries.data.entries);

        sortedList.sort((a, b) => DateTime.parse(a.date.toString())
            .compareTo(DateTime.parse(b.date.toString())));

        sortedEntries = sortedEntries.copyWith(
            data: sortedEntries.data.copyWith(entries: sortedList));

        emit(state.copyWith(entriesResponse: sortedEntries, isLoading: true));
        emit(state.copyWith(isLoading: false));
      }
    });
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    print(
        '>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>$error');
  }
}
