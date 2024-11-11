import 'package:freezed_annotation/freezed_annotation.dart';

import '../air_sealing_checklist/air_sealing_checklist.dart';

part 'air_sealing.freezed.dart';
part 'air_sealing.g.dart';

@freezed
class AirSealing with _$AirSealing {
  const factory AirSealing({
    bool? onWorkOrder,
    AirSealingChecklist? checklist,
    String? notes,
    List<String>? sealingQualityPic,
  }) = _AirSealing;

  factory AirSealing.fromJson(Map<String, dynamic> json) =>
      _$AirSealingFromJson(json);
}
