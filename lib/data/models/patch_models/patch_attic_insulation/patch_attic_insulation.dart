import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../models/get_entry_models/attic_insulation/attic_insulation.dart';

part 'patch_attic_insulation.freezed.dart';
part 'patch_attic_insulation.g.dart';

@freezed
class PatchAtticInsulationData with _$PatchAtticInsulationData {
  const factory PatchAtticInsulationData({
    required AtticInsulation atticInsulation,
  }) = _PatchAtticInsulationData;

  factory PatchAtticInsulationData.fromJson(Map<String, dynamic> json) =>
      _$PatchAtticInsulationDataFromJson(json);
}
