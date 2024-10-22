import 'dart:convert';

LogoutResonseData logoutResonseDataFromJson(String str) =>
    LogoutResonseData.fromJson(json.decode(str));

String logoutResonseDataToJson(LogoutResonseData data) =>
    json.encode(data.toJson());

class LogoutResonseData {
  Meta meta;

  LogoutResonseData({
    required this.meta,
  });

  factory LogoutResonseData.fromJson(Map<String, dynamic> json) =>
      LogoutResonseData(
        meta: Meta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "meta": meta.toJson(),
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
