import 'package:freezed_annotation/freezed_annotation.dart';

import '../../meta/meta.dart';
import '../data/data.dart';

part 'post_entries_response_data.freezed.dart';
part 'post_entries_response_data.g.dart';

@freezed
class PostEntriesResponseData with _$PostEntriesResponseData {
  const factory PostEntriesResponseData({
    required Meta meta,
    required Data data,
  }) = _PostEntriesResponseData;

  factory PostEntriesResponseData.fromJson(Map<String, dynamic> json) =>
      _$PostEntriesResponseDataFromJson(json);
}
