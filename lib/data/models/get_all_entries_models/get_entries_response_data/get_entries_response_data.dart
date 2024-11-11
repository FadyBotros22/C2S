import 'package:freezed_annotation/freezed_annotation.dart';

import '../../meta/meta.dart';
import '../get_entries_data/get_entries_data.dart';

part 'get_entries_response_data.freezed.dart';
part 'get_entries_response_data.g.dart';

@freezed
class EntriesResponseData with _$EntriesResponseData {
  const factory EntriesResponseData({
    required Meta meta,
    required Data data,
  }) = _EntriesResponseData;

  factory EntriesResponseData.fromJson(Map<String, dynamic> json) =>
      _$EntriesResponseDataFromJson(json);
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
