import 'package:freezed_annotation/freezed_annotation.dart';

import '../device/device.dart';
import '../user/user.dart';

part 'user_request_data.freezed.dart';
part 'user_request_data.g.dart';

@freezed
class UserRequestData with _$UserRequestData {
  const factory UserRequestData({
    required User user,
    required Device device,
  }) = _UserRequestData;

  factory UserRequestData.fromJson(Map<String, dynamic> json) =>
      _$UserRequestDataFromJson(json);
}
