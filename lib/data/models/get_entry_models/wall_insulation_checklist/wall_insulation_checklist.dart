import 'package:freezed_annotation/freezed_annotation.dart';

part 'wall_insulation_checklist.freezed.dart';
part 'wall_insulation_checklist.g.dart';

@freezed
class WallInsulationChecklist with _$WallInsulationChecklist {
  const factory WallInsulationChecklist({
    bool? wallMeasurementsAccurate,
    bool? drainagePlaneInstalled,
    bool? sidingPutBack,
    bool? cornerBracesChecked,
    bool? blockersChecked,
  }) = _WallInsulationChecklist;

  factory WallInsulationChecklist.fromJson(Map<String, dynamic> json) =>
      _$WallInsulationChecklistFromJson(json);
}
