import 'package:c2s/data/json_data/get_entry_response_data.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../repositories/abstract_entries_repo.dart';
import 'form_event.dart';
import 'form_state.dart';

class FormBloc extends Bloc<FormEvent, FormState> {
  final AbstractEntriesRepo repository;

  FormBloc(this.repository) : super(FormInitial()) {
    GetEntryResponseData entryData = GetEntryResponseData(
      data: Data(
        id: null,
        programType: null,
        doeJob: null,
        address: null,
        city: null,
        coordinates: null,
        createdBy: '',
        jobId: null,
        progressStep: null,
        date: null,
      ),
    );
    // Handle LoadEntryEvent
    on<LoadEntryEvent>((event, emit) async {
      emit(FormLoading());
      if (event.id != 'empty') {
        try {
          entryData = await repository.getEntry(event.token, event.id);
          entryData.data?.date = entryData.data?.date
              ?.substring(0, entryData.data?.date?.indexOf('T'));
          emit(FormLoaded(entryData: entryData));
        } catch (e) {
          emit(FormError(e.toString(), entryData));
          await Future.delayed(Duration(milliseconds: 500));
          emit(FormLoaded(entryData: entryData));
        }
      } else {
        emit(FormLoaded(entryData: entryData));
      }
    });

    // Handle PostEntryEvent
    on<PostEntryEvent>((event, emit) async {
      emit(FormLoading());
      try {
        final id = await repository.postEntry(event.token, event.data);
        emit(FormSubmitted(id: id, screen: event.screen));
      } catch (_) {
        emit(FormError(
            'Internet Error, Connect to an active Network', entryData));
        await Future.delayed(Duration(milliseconds: 500));
        emit(FormLoaded(entryData: entryData));
      }
    });

    // Handle PatchEntryEvent
    on<PatchEntryEvent>((event, emit) async {
      emit(FormLoading());
      try {
        await repository.patchEntry(event.token, event.id, event.data);
        emit(FormSubmitted(screen: event.screen));
      } catch (e) {
        emit(FormError(
            'Internet Error, Connect to an active Network', entryData));
        await Future.delayed(Duration(milliseconds: 500));
        emit(FormLoaded(entryData: entryData));
      }
    });

    on<SubmitClicked>((event, emit) async {
      try {
        await repository.patchEntry(event.token, event.id, event.data);
        emit(FormSubmitted(screen: event.screen));
      } catch (e) {
        emit(SubmitErrorState());
        await Future.delayed(Duration(milliseconds: 500));
        emit(FormError(
            'Internet Error, Connect to an active Network', entryData));
        await Future.delayed(Duration(milliseconds: 500));
        emit(FormLoaded(entryData: entryData));
      }
    });
    on<BackButtonClicked>((event, emit) async {
      var connectivityResult = await Connectivity().checkConnectivity();
      if (connectivityResult.first == ConnectivityResult.mobile ||
          connectivityResult.first == ConnectivityResult.wifi) {
        emit(NavigateBack());
      } else {
        emit(FormError(
            'Internet Error, Connect to an active Network', entryData));
        await Future.delayed(Duration(milliseconds: 500));
        emit(FormLoaded(entryData: entryData));
      }
    });
  }

  @override
  void onChange(Change<FormState> change) {
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
