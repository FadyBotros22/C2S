import 'package:freezed_annotation/freezed_annotation.dart';

import '../../coordinates/coordinates.dart';

part 'post_entries_request_data.freezed.dart';
part 'post_entries_request_data.g.dart';

@freezed
class PostEntriesRequestData with _$PostEntriesRequestData {
  const factory PostEntriesRequestData({
    String? programType,
    bool? doeJob,
    String? date,
    String? address,
    String? city,
    Coordinates? coordinates, // Assuming Coordinates is another Freezed model
    String? jobId,
  }) = _PostEntriesRequestData;

  factory PostEntriesRequestData.fromJson(Map<String, dynamic> json) =>
      _$PostEntriesRequestDataFromJson(json);
}
