import 'package:freezed_annotation/freezed_annotation.dart';

import '../device/device.dart';
import '../user/response_user.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class Data with _$Data {
  const factory Data({
    required User user,
    required Device device,
    required String authToken,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
