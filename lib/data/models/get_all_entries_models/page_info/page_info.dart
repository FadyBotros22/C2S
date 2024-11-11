import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_info.freezed.dart';
part 'page_info.g.dart';

@freezed
class PageInfo with _$PageInfo {
  const factory PageInfo({
    required int currentPage,
    required int pagesCount,
    required int nextPage,
    required int perPage,
    required int recordsCount,
  }) = _PageInfo;

  factory PageInfo.fromJson(Map<String, dynamic> json) =>
      _$PageInfoFromJson(json);
}
