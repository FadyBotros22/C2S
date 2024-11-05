import 'package:freezed_annotation/freezed_annotation.dart';

import '../../get_entry_models/final_walkthrough/final_walkthrough.dart';

part 'patch_final_walkthrough.freezed.dart';
part 'patch_final_walkthrough.g.dart';

@freezed
class PatchFinalWalkthroughData with _$PatchFinalWalkthroughData {
  const factory PatchFinalWalkthroughData({
    required FinalWalkthrough finalWalkthrough,
  }) = _PatchFinalWalkthroughData;

  factory PatchFinalWalkthroughData.fromJson(Map<String, dynamic> json) =>
      _$PatchFinalWalkthroughDataFromJson(json);
}
