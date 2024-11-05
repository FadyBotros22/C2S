import 'package:freezed_annotation/freezed_annotation.dart';

part 'patch_base.freezed.dart';
part 'patch_base.g.dart';

@freezed
class PatchBaseData with _$PatchBaseData {
  const factory PatchBaseData({
    BaseData? baseData,
  }) = _PatchBaseData;

  factory PatchBaseData.fromJson(Map<String, dynamic> json) =>
      _$PatchBaseDataFromJson(json);
}

@freezed
class BaseData with _$BaseData {
  const factory BaseData({
    String? programType,
    bool? doeJob,
    String? address,
    String? city,
    String? date,
  }) = _BaseData;

  factory BaseData.fromJson(Map<String, dynamic> json) =>
      _$BaseDataFromJson(json);
}
