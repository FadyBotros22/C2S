import 'dart:convert';

PostEntriesRequestData postEntriesRequestDataFromJson(String str) =>
    PostEntriesRequestData.fromJson(json.decode(str));

String postEntriesRequestDataToJson(PostEntriesRequestData data) =>
    json.encode(data.toJson());

class PostEntriesRequestData {
  String programType;
  bool doeJob;
  String date;
  String address;
  String city;
  Coordinates coordinates;
  String jobId;

  PostEntriesRequestData({
    required this.programType,
    required this.doeJob,
    required this.date,
    required this.address,
    required this.city,
    required this.coordinates,
    required this.jobId,
  });

  factory PostEntriesRequestData.fromJson(Map<String, dynamic> json) =>
      PostEntriesRequestData(
        programType: json["programType"],
        doeJob: json["doeJob"],
        date: json["date"],
        address: json["address"],
        city: json["city"],
        coordinates: Coordinates.fromJson(json["coordinates"]),
        jobId: json["jobId"],
      );

  Map<String, dynamic> toJson() => {
        "programType": programType,
        "doeJob": doeJob,
        "date": date,
        "address": address,
        "city": city,
        "coordinates": coordinates.toJson(),
        "jobId": jobId,
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
