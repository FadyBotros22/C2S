import 'package:c2s/data/json_data/get_entry_response_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../repositories/abstract_entries_repo.dart';
import 'form_event.dart';
import 'form_state.dart';

class FormBloc extends Bloc<FormEvent, FormState> {
  final AbstractEntriesRepo repository;

  FormBloc(this.repository) : super(FormInitial()) {
    // Handle LoadEntryEvent
    on<LoadEntryEvent>((event, emit) async {
      emit(FormLoading());
      if (event.id != 'empty') {
        try {
          final entryData = await repository.getEntry(event.token, event.id);
          entryData.data?.date = entryData.data?.date
              ?.substring(0, entryData.data?.date?.indexOf('T'));
          emit(FormLoaded(entryData: entryData));
        } catch (e) {
          emit(FormError(e.toString()));
        }
      } else {
        final entryData = GetEntryResponseData(
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
        emit(FormLoaded(entryData: entryData));
      }
    });

    // Handle PostEntryEvent
    on<PostEntryEvent>((event, emit) async {
      emit(FormLoading());
      try {
        final id = await repository.postEntry(event.token, event.data);
        emit(FormSubmitted(id: id, screen: event.screen));
      } catch (e) {
        emit(FormError(e.toString()));
      }
    });

    // Handle PatchEntryEvent
    on<PatchEntryEvent>((event, emit) async {
      print('activated');
      emit(FormLoading());
      try {
        await repository.patchEntry(event.token, event.id, event.data);
        emit(FormSubmitted(screen: event.screen));
      } catch (e) {
        emit(FormError(e.toString()));
      }
    });
  }

  @override
  void onChange(Change<FormState> change) {
    super.onChange(change);
    print(change);
  }
}
