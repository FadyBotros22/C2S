import 'package:freezed_annotation/freezed_annotation.dart';

import '../entry/entry.dart';
import '../page_info/page_info.dart';

part 'get_entries_data.freezed.dart';
part 'get_entries_data.g.dart';

@freezed
class Data with _$Data {
  const factory Data({
    required List<Entry> entries,
    required PageInfo pageInfo,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
