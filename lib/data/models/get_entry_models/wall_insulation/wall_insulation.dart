import 'package:freezed_annotation/freezed_annotation.dart';
import '../wall_insulation_checklist/wall_insulation_checklist.dart';
part 'wall_insulation.freezed.dart';
part 'wall_insulation.g.dart';

@freezed
class WallInsulation with _$WallInsulation {
  const factory WallInsulation({
    bool? onWorkOrder,
    WallInsulationChecklist? checklist,
    String? notes,
  }) = _WallInsulation;

  factory WallInsulation.fromJson(Map<String, dynamic> json) =>
      _$WallInsulationFromJson(json);
}
