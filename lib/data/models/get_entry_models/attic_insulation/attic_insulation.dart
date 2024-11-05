import 'package:freezed_annotation/freezed_annotation.dart';

import '../attic_insulation_checklist/attic_insulation_checklist.dart';

part 'attic_insulation.freezed.dart';
part 'attic_insulation.g.dart';

@freezed
class AtticInsulation with _$AtticInsulation {
  const factory AtticInsulation({
    bool? onWorkOrder,
    AtticInsulationChecklist? checklist,
    String? inaccurateMeasurementsNotes,
    String? notes,
    List<String>? atticInsulationPic,
  }) = _AtticInsulation;

  factory AtticInsulation.fromJson(Map<String, dynamic> json) =>
      _$AtticInsulationFromJson(json);
}
