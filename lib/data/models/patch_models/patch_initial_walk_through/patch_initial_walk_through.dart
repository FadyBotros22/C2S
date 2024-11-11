import 'package:freezed_annotation/freezed_annotation.dart';

import '../../get_entry_models/initial_walkthrough/initial_walkthrough.dart';

part 'patch_initial_walk_through.freezed.dart';
part 'patch_initial_walk_through.g.dart';

@freezed
class PatchInitialWalkThroughData with _$PatchInitialWalkThroughData {
  const factory PatchInitialWalkThroughData({
    required InitialWalkthrough initialWalkthrough,
  }) = _PatchInitialWalkThroughData;

  factory PatchInitialWalkThroughData.fromJson(Map<String, dynamic> json) =>
      _$PatchInitialWalkThroughDataFromJson(json);
}
