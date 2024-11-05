import 'package:freezed_annotation/freezed_annotation.dart';

import '../../get_entry_models/wall_insulation/wall_insulation.dart';

part 'patch_wall_insulation.freezed.dart';
part 'patch_wall_insulation.g.dart';

@freezed
class PatchWallInsulationData with _$PatchWallInsulationData {
  const factory PatchWallInsulationData({
    required WallInsulation wallInsulation,
  }) = _PatchWallInsulationData;

  factory PatchWallInsulationData.fromJson(Map<String, dynamic> json) =>
      _$PatchWallInsulationDataFromJson(json);
}
