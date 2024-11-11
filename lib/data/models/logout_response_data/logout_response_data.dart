import 'package:freezed_annotation/freezed_annotation.dart';
import '../meta/meta.dart';

part 'logout_response_data.freezed.dart';
part 'logout_response_data.g.dart';

@freezed
class LogoutResponseData with _$LogoutResponseData {
  const factory LogoutResponseData({
    required Meta meta,
  }) = _LogoutResponseData;

  factory LogoutResponseData.fromJson(Map<String, dynamic> json) =>
      _$LogoutResponseDataFromJson(json);
}
