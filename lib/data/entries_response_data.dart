// To parse this JSON data, do
//
//     final entriesResponseData = entriesResponseDataFromJson(jsonString);

import 'dart:convert';

EntriesResponseData entriesResponseDataFromJson(String str) =>
    EntriesResponseData.fromJson(json.decode(str));

String entriesResponseDataToJson(EntriesResponseData data) =>
    json.encode(data.toJson());

class EntriesResponseData {
  Meta meta;
  Data data;

  EntriesResponseData({
    required this.meta,
    required this.data,
  });

  factory EntriesResponseData.fromJson(Map<String, dynamic> json) =>
      EntriesResponseData(
        meta: Meta.fromJson(json["meta"]),
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "meta": meta.toJson(),
        "data": data.toJson(),
      };
}

class Data {
  List<Entry> entries;
  PageInfo pageInfo;

  Data({
    required this.entries,
    required this.pageInfo,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        entries:
            List<Entry>.from(json["entries"].map((x) => Entry.fromJson(x))),
        pageInfo: PageInfo.fromJson(json["pageInfo"]),
      );

  Map<String, dynamic> toJson() => {
        "entries": List<dynamic>.from(entries.map((x) => x.toJson())),
        "pageInfo": pageInfo.toJson(),
      };
}

class Entry {
  String id;
  String createdBy;
  String jobId;
  int progressStep;
  DateTime date;
  String? address;

  Entry({
    required this.id,
    required this.createdBy,
    required this.jobId,
    required this.progressStep,
    required this.date,
    required this.address,
  });

  factory Entry.fromJson(Map<String, dynamic> json) => Entry(
        id: json["id"],
        createdBy: json["createdBy"],
        jobId: json["jobId"],
        progressStep: json["progressStep"],
        date: DateTime.parse(json["date"]),
        address: json["address"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "createdBy": createdBy,
        "jobId": jobId,
        "progressStep": progressStep,
        "date": date.toIso8601String(),
        "address": address,
      };
}

class PageInfo {
  int currentPage;
  int pagesCount;
  int nextPage;
  int perPage;
  int recordsCount;

  PageInfo({
    required this.currentPage,
    required this.pagesCount,
    required this.nextPage,
    required this.perPage,
    required this.recordsCount,
  });

  factory PageInfo.fromJson(Map<String, dynamic> json) => PageInfo(
        currentPage: json["currentPage"],
        pagesCount: json["pagesCount"],
        nextPage: json["nextPage"],
        perPage: json["perPage"],
        recordsCount: json["recordsCount"],
      );

  Map<String, dynamic> toJson() => {
        "currentPage": currentPage,
        "pagesCount": pagesCount,
        "nextPage": nextPage,
        "perPage": perPage,
        "recordsCount": recordsCount,
      };
}

class Meta {
  int status;
  String message;

  Meta({
    required this.status,
    required this.message,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        status: json["status"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
      };
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
