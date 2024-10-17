import 'dart:convert';

PatchAirSealingData patchAirSealingDataFromJson(String str) =>
    PatchAirSealingData.fromJson(json.decode(str));

String patchAirSealingDataToJson(PatchAirSealingData data) =>
    json.encode(data.toJson());

class PatchAirSealingData {
  AirSealing airSealing;

  PatchAirSealingData({
    required this.airSealing,
  });

  factory PatchAirSealingData.fromJson(Map<String, dynamic> json) =>
      PatchAirSealingData(
        airSealing: AirSealing.fromJson(json["airSealing"]),
      );

  Map<String, dynamic> toJson() => {
        "airSealing": airSealing.toJson(),
      };
}

class AirSealing {
  bool onWorkOrder;
  Checklist checklist;
  String notes;
  List<String> sealingQualityPic;

  AirSealing({
    required this.onWorkOrder,
    required this.checklist,
    required this.notes,
    required this.sealingQualityPic,
  });

  factory AirSealing.fromJson(Map<String, dynamic> json) => AirSealing(
        onWorkOrder: json["onWorkOrder"],
        checklist: Checklist.fromJson(json["checklist"]),
        notes: json["notes"],
        sealingQualityPic:
            List<String>.from(json["sealingQualityPic"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "onWorkOrder": onWorkOrder,
        "checklist": checklist.toJson(),
        "notes": notes,
        "sealingQualityPic":
            List<dynamic>.from(sealingQualityPic.map((x) => x)),
      };
}

class Checklist {
  String mainTopPlateSealed;
  String wetWallSealed;
  String chimneySealed;
  String exteriorPlatesSealed;
  String bhatroomFansSealed;
  String gableEndsSealed;
  String atticAccessSealed;
  String basementSealed;

  Checklist({
    required this.mainTopPlateSealed,
    required this.wetWallSealed,
    required this.chimneySealed,
    required this.exteriorPlatesSealed,
    required this.bhatroomFansSealed,
    required this.gableEndsSealed,
    required this.atticAccessSealed,
    required this.basementSealed,
  });

  factory Checklist.fromJson(Map<String, dynamic> json) => Checklist(
        mainTopPlateSealed: json["mainTopPlateSealed"],
        wetWallSealed: json["wetWallSealed"],
        chimneySealed: json["chimneySealed"],
        exteriorPlatesSealed: json["exteriorPlatesSealed"],
        bhatroomFansSealed: json["bhatroomFansSealed"],
        gableEndsSealed: json["gableEndsSealed"],
        atticAccessSealed: json["atticAccessSealed"],
        basementSealed: json["basementSealed"],
      );

  Map<String, dynamic> toJson() => {
        "mainTopPlateSealed": mainTopPlateSealed,
        "wetWallSealed": wetWallSealed,
        "chimneySealed": chimneySealed,
        "exteriorPlatesSealed": exteriorPlatesSealed,
        "bhatroomFansSealed": bhatroomFansSealed,
        "gableEndsSealed": gableEndsSealed,
        "atticAccessSealed": atticAccessSealed,
        "basementSealed": basementSealed,
      };
}
