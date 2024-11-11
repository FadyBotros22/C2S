import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../meta/meta.dart';
import '../data/data.dart';

part 'user_response_data.freezed.dart';
part 'user_response_data.g.dart';

@freezed
class UserResponseData with _$UserResponseData {
  const factory UserResponseData({
    required Meta meta,
    required Data data,
  }) = _UserResponseData;

  factory UserResponseData.fromJson(Map<String, dynamic> json) =>
      _$UserResponseDataFromJson(json);
}
