import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../models/get_entry_models/air_sealing/air_sealing.dart';

part 'patch_air_sealing.freezed.dart';
part 'patch_air_sealing.g.dart';

@freezed
class PatchAirSealingData with _$PatchAirSealingData {
  const factory PatchAirSealingData({
    required AirSealing airSealing,
  }) = _PatchAirSealingData;

  factory PatchAirSealingData.fromJson(Map<String, dynamic> json) =>
      _$PatchAirSealingDataFromJson(json);
}
