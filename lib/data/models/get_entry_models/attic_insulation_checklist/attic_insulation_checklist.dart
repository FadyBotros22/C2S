import 'package:freezed_annotation/freezed_annotation.dart';

part 'attic_insulation_checklist.freezed.dart';
part 'attic_insulation_checklist.g.dart';

@freezed
class AtticInsulationChecklist with _$AtticInsulationChecklist {
  const factory AtticInsulationChecklist({
    String? insulationMarkersInstalled,
    String? lightsDammed,
    String? bathroomFansVentedOut,
    String? bathroomFansDammed,
    String? measurementsAreAccurate,
    String? venilationChecked,
    String? chimneyDammed,
  }) = _AtticInsulationChecklist;

  factory AtticInsulationChecklist.fromJson(Map<String, dynamic> json) =>
      _$AtticInsulationChecklistFromJson(json);
}
