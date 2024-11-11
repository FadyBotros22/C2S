import 'package:freezed_annotation/freezed_annotation.dart';

part 'air_sealing_checklist.freezed.dart';
part 'air_sealing_checklist.g.dart';

@freezed
class AirSealingChecklist with _$AirSealingChecklist {
  const factory AirSealingChecklist({
    String? mainTopPlateSealed,
    String? wetWallSealed,
    String? chimneySealed,
    String? exteriorPlatesSealed,
    String? bhatroomFansSealed,
    String? gableEndsSealed,
    String? atticAccessSealed,
    String? basementSealed,
  }) = _AirSealingChecklist;

  factory AirSealingChecklist.fromJson(Map<String, dynamic> json) =>
      _$AirSealingChecklistFromJson(json);
}
