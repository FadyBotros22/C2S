import 'package:c2s/presentation/screens/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../data/json_data/get_entry_response_data/get_entry_response_data.dart';

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
            coordinates: Coordinates(),
          )),
      screen: HomePage());
}

enum ActiveForm { form1, form2, form3, form4, form5, form6 }
