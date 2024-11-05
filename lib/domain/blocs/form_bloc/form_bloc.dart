import 'package:c2s/presentation/screens/form%20screens/form_screen2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/models/get_entry_models/air_sealing/air_sealing.dart';
import '../../../data/models/get_entry_models/attic_insulation/attic_insulation.dart';
import '../../../data/models/get_entry_models/final_walkthrough/final_walkthrough.dart';
import '../../../data/models/get_entry_models/get_entry_response_data/get_entry_response_data.dart';
import '../../../data/models/get_entry_models/initial_walkthrough/initial_walkthrough.dart';
import '../../../data/models/get_entry_models/initial_walkthrough_checklist/initial_walkthrough_checklist.dart';
import '../../../data/models/get_entry_models/wall_insulation/wall_insulation.dart';
import '../../repositories/abstract_entries_repo.dart';
import 'form_event.dart';
import 'form_state.dart' as custom_form_state;

class FormBloc extends Bloc<FormEvent, custom_form_state.FormState> {
  final AbstractEntriesRepo repository;

  FormBloc(this.repository) : super(custom_form_state.FormState.initial()) {
    // Handle LoadEntryEvent
    on<LoadEntryEvent>((event, emit) async {
      emit((state as custom_form_state.FormScreen).copyWith(isLoading: true));
      if (event.id != 'empty') {
        try {
          GetEntryResponseData entryData =
              await repository.getEntry(event.token, event.id);
          entryData = entryData.copyWith(
              data: entryData.data?.copyWith(
                  date: entryData.data?.date
                      ?.substring(0, entryData.data?.date?.indexOf('T'))));
          emit((state as custom_form_state.FormScreen)
              .copyWith(entryData: entryData));
        } catch (e) {
          emit((state as custom_form_state.FormScreen)
              .copyWith(errorMessage: e.toString()));
          await Future.delayed(Duration(milliseconds: 500));
          emit((state as custom_form_state.FormScreen)
              .copyWith(errorMessage: null));
        }
      }
      emit((state as custom_form_state.FormScreen).copyWith(isLoading: false));
    });

    // Handle PatchEntryEvent
    on<PatchEntryEvent>((event, emit) async {
      emit((state as custom_form_state.FormScreen).copyWith(isLoading: true));
      try {
        if (event.id != null) {
          await repository.patchEntry(event.token, event.id!, event.data);
          emit((state as custom_form_state.FormScreen).copyWith(
              onNavigate: true,
              screen: event.screen is Text
                  ? FormScreen2(id: event.id!)
                  : event.screen));
        } else {
          final id = await repository.postEntry(event.token, event.data);
          emit((state as custom_form_state.FormScreen).copyWith(
              onNavigate: true,
              screen:
                  event.screen is Text ? FormScreen2(id: id) : event.screen));
        }
      } catch (e) {
        emit((state as custom_form_state.FormScreen).copyWith(
            errorMessage: 'Internet Error, Connect to an active Network'));
        await Future.delayed(Duration(milliseconds: 500));
        emit((state as custom_form_state.FormScreen)
            .copyWith(errorMessage: null, isLoading: false));
      }
    });

    on<UpdateData>((event, emit) async {
      final entryData = state.entryData;
      GetEntryResponseData? newEntryData = entryData?.copyWith(
        data: entryData.data?.copyWith(
          date: event.date ?? entryData.data?.date,
          address: event.address ?? entryData.data?.address,
          city: event.city ?? entryData.data?.city,
          doeJob: event.doeJob ?? entryData.data?.doeJob,
          programType: event.programType ?? entryData.data?.programType,
          jobId: event.jobId ?? entryData.data?.jobId,
          createdBy: event.createdBy ?? entryData.data?.createdBy,
          initialWalkthrough:
              (entryData.data?.initialWalkthrough ?? InitialWalkthrough())
                  .copyWith(
            checklist: (entryData.data?.initialWalkthrough?.checklist ??
                    InitialWalkthroughChecklist())
                .copyWith(
              knobAndTube: event.knobAndTube ??
                  entryData.data?.initialWalkthrough?.checklist?.knobAndTube,
              abestos: event.abestos ??
                  entryData.data?.initialWalkthrough?.checklist?.abestos,
              moistureConcerns: event.moistureConcerns ??
                  entryData
                      .data?.initialWalkthrough?.checklist?.moistureConcerns,
              titlesOnSite: event.titlesOnSite ??
                  entryData.data?.initialWalkthrough?.checklist?.titlesOnSite,
              unventedDryers: event.unventedDryers ??
                  entryData.data?.initialWalkthrough?.checklist?.unventedDryers,
            ),
            blowerDoorStatus: event.blowerDoorStatus ??
                entryData.data?.initialWalkthrough?.blowerDoorStatus,
            blowerStartingValue: event.blowerStartingValue ??
                entryData.data?.initialWalkthrough?.blowerStartingValue,
            notes:
                event.initialNotes ?? entryData.data?.initialWalkthrough?.notes,
            heatingSystemPic: event.heatingSystemPic == ''
                ? null
                : event.heatingSystemPic ??
                    entryData.data?.initialWalkthrough?.heatingSystemPic,
            waterHeaterPic: event.waterHeaterPic == ''
                ? null
                : event.waterHeaterPic ??
                    entryData.data?.initialWalkthrough?.waterHeaterPic,
            concernsPic: event.concernsPic ??
                entryData.data?.initialWalkthrough?.concernsPic,
          ),
          airSealing: (entryData.data?.airSealing ?? AirSealing()).copyWith(
            notes: event.airNotes ?? entryData.data?.airSealing?.notes,
            onWorkOrder:
                event.airOnWorkOrder ?? entryData.data?.airSealing?.onWorkOrder,
            sealingQualityPic: event.sealingQualityPic ??
                entryData.data?.airSealing?.sealingQualityPic,
          ),
          atticInsulation:
              (entryData.data?.atticInsulation ?? AtticInsulation()).copyWith(
            notes: event.atticNotes ?? entryData.data?.atticInsulation?.notes,
            onWorkOrder: event.atticOnWorkOrder ??
                entryData.data?.atticInsulation?.onWorkOrder,
            inaccurateMeasurementsNotes: event.inaccurateMeasurementsNotes ??
                entryData.data?.atticInsulation?.inaccurateMeasurementsNotes,
            atticInsulationPic: event.atticInsulationPic ??
                entryData.data?.atticInsulation?.atticInsulationPic,
          ),
          wallInsulation:
              (entryData.data?.wallInsulation ?? WallInsulation()).copyWith(
            notes: event.wallNotes ?? entryData.data?.wallInsulation?.notes,
            onWorkOrder: event.wallOnWorkOrder ??
                entryData.data?.wallInsulation?.onWorkOrder,
          ),
          finalWalkthrough:
              (entryData.data?.finalWalkthrough ?? FinalWalkthrough()).copyWith(
            notes: event.finalNotes ?? entryData.data?.finalWalkthrough?.notes,
            bathroomConfirmation: event.bathroomConfirmation ??
                entryData.data?.finalWalkthrough?.bathroomConfirmation,
            leftConfirmation: event.leftConfirmation ??
                entryData.data?.finalWalkthrough?.leftConfirmation,
            qualityPics: event.qualityPics ??
                entryData.data?.finalWalkthrough?.qualityPics,
          ),
        ),
      );
      emit(state.copyWith(entryData: newEntryData));
    });
  }
}
