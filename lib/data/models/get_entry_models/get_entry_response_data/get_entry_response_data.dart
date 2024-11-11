import 'package:freezed_annotation/freezed_annotation.dart';

import '../../meta/meta.dart';
import '../get_entry_data/get_entry_data.dart';
part 'get_entry_response_data.freezed.dart';
part 'get_entry_response_data.g.dart';

@freezed
class GetEntryResponseData with _$GetEntryResponseData {
  const factory GetEntryResponseData({
    Meta? meta,
    Data? data,
  }) = _GetEntryResponseData;

  factory GetEntryResponseData.fromJson(Map<String, dynamic> json) =>
      _$GetEntryResponseDataFromJson(json);
}
