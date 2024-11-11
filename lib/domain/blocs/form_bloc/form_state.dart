import 'package:c2s/presentation/screens/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/get_entry_models/attic_insulation/attic_insulation.dart';
import '../../../data/models/coordinates/coordinates.dart';
import '../../../data/models/get_entry_models/final_walkthrough/final_walkthrough.dart';
import '../../../data/models/get_entry_models/get_entry_data/get_entry_data.dart';
import '../../../data/models/get_entry_models/get_entry_response_data/get_entry_response_data.dart';
import '../../../data/models/get_entry_models/initial_walkthrough/initial_walkthrough.dart';
import '../../../data/models/get_entry_models/initial_walkthrough_checklist/initial_walkthrough_checklist.dart';
import '../../../data/models/meta/meta.dart';
import '../../../data/models/get_entry_models/wall_insulation/wall_insulation.dart';

part 'form_state.freezed.dart';

@freezed
abstract class FormState with _$FormState {
  const factory FormState(
      {GetEntryResponseData? entryData,
      bool? isLoading,
      String? errorMessage,
      String? isSubmitError,
      ActiveForm? activeForm,
      String? id,
      bool? onNavigate,
      required Widget screen}) = FormScreen;

  factory FormState.initial() => FormState(
      isLoading: false,
      entryData: GetEntryResponseData(
          meta: Meta(),
          data: Data(
            initialWalkthrough:
                InitialWalkthrough(checklist: InitialWalkthroughChecklist()),
            finalWalkthrough: FinalWalkthrough(),
            wallInsulation: WallInsulation(),
            atticInsulation: AtticInsulation(),
            coordinates: Coordinates(latitude: 0, longitude: 0),
          )),
      screen: HomePage());
}

enum ActiveForm { form1, form2, form3, form4, form5, form6 }
