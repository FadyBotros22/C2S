// To parse this JSON data, do
//
//     final postEntriesResponseData = postEntriesResponseDataFromJson(jsonString);

import 'dart:convert';

PostEntriesResponseData postEntriesResponseDataFromJson(String str) =>
    PostEntriesResponseData.fromJson(json.decode(str));

String postEntriesResponseDataToJson(PostEntriesResponseData data) =>
    json.encode(data.toJson());

class PostEntriesResponseData {
  Meta meta;
  Data data;

  PostEntriesResponseData({
    required this.meta,
    required this.data,
  });

  factory PostEntriesResponseData.fromJson(Map<String, dynamic> json) =>
      PostEntriesResponseData(
        meta: Meta.fromJson(json["meta"]),
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "meta": meta.toJson(),
        "data": data.toJson(),
      };
}

class Data {
  String id;
  String createdBy;
  String jobId;
  int progressStep;
  DateTime date;
  String programType;
  String address;
  String city;
  Coordinates coordinates;

  Data({
    required this.id,
    required this.createdBy,
    required this.jobId,
    required this.progressStep,
    required this.date,
    required this.programType,
    required this.address,
    required this.city,
    required this.coordinates,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        createdBy: json["createdBy"],
        jobId: json["jobId"],
        progressStep: json["progressStep"],
        date: DateTime.parse(json["date"]),
        programType: json["programType"],
        address: json["address"],
        city: json["city"],
        coordinates: Coordinates.fromJson(json["coordinates"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "createdBy": createdBy,
        "jobId": jobId,
        "progressStep": progressStep,
        "date": date.toIso8601String(),
        "programType": programType,
        "address": address,
        "city": city,
        "coordinates": coordinates.toJson(),
      };
}

class Coordinates {
  int latitude;
  int longitude;

  Coordinates({
    required this.latitude,
    required this.longitude,
  });

  factory Coordinates.fromJson(Map<String, dynamic> json) => Coordinates(
        latitude: json["latitude"],
        longitude: json["longitude"],
      );

  Map<String, dynamic> toJson() => {
        "latitude": latitude,
        "longitude": longitude,
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
