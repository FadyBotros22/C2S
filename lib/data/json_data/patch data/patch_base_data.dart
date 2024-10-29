import 'dart:convert';

PatchBaseData patchBaseDataFromJson(String str) =>
    PatchBaseData.fromJson(json.decode(str));

String patchBaseDataToJson(PatchBaseData data) => json.encode(data.toJson());

class PatchBaseData {
  BaseData? baseData;

  PatchBaseData({
    this.baseData,
  });

  factory PatchBaseData.fromJson(Map<String, dynamic> json) => PatchBaseData(
        baseData: BaseData.fromJson(json["baseData"]),
      );

  Map<String, dynamic> toJson() => {
        "baseData": baseData?.toJson(),
      };
}

class BaseData {
  String? programType;
  bool? doeJob;
  String? address;
  String? city;
  String? date;

  BaseData({
    this.programType,
    this.doeJob,
    this.address,
    this.city,
    this.date,
  });

  factory BaseData.fromJson(Map<String, dynamic> json) => BaseData(
        programType: json["programType"],
        doeJob: json["doeJob"],
        address: json["address"],
        city: json["city"],
        date: json["date"],
      );

  Map<String, dynamic> toJson() => {
        "programType": programType,
        "doeJob": doeJob,
        "address": address,
        "city": city,
        "date": date,
      };
}
