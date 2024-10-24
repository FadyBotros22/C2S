// To parse this JSON data, do
//
//     final patchWallInsulationData = patchWallInsulationDataFromJson(jsonString);

import 'dart:convert';

PatchWallInsulationData patchWallInsulationDataFromJson(String str) =>
    PatchWallInsulationData.fromJson(json.decode(str));

String patchWallInsulationDataToJson(PatchWallInsulationData data) =>
    json.encode(data.toJson());

class PatchWallInsulationData {
  WallInsulation wallInsulation;

  PatchWallInsulationData({
    required this.wallInsulation,
  });

  factory PatchWallInsulationData.fromJson(Map<String, dynamic> json) =>
      PatchWallInsulationData(
        wallInsulation: WallInsulation.fromJson(json["wallInsulation"]),
      );

  Map<String, dynamic> toJson() => {
        "wallInsulation": wallInsulation.toJson(),
      };
}

class WallInsulation {
  bool onWorkOrder;
  Checklist checklist;
  String notes;

  WallInsulation({
    required this.onWorkOrder,
    required this.checklist,
    required this.notes,
  });

  factory WallInsulation.fromJson(Map<String, dynamic> json) => WallInsulation(
        onWorkOrder: json["onWorkOrder"],
        checklist: Checklist.fromJson(json["checklist"]),
        notes: json["notes"],
      );

  Map<String, dynamic> toJson() => {
        "onWorkOrder": onWorkOrder,
        "checklist": checklist.toJson(),
        "notes": notes,
      };
}

class Checklist {
  bool wallMeasurementsAccurate;
  bool drainagePlaneInstalled;
  bool sidingPutBack;
  bool cornerBracesChecked;
  bool blockersChecked;

  Checklist({
    required this.wallMeasurementsAccurate,
    required this.drainagePlaneInstalled,
    required this.sidingPutBack,
    required this.cornerBracesChecked,
    required this.blockersChecked,
  });

  factory Checklist.fromJson(Map<String, dynamic> json) => Checklist(
        wallMeasurementsAccurate: json["wallMeasurementsAccurate"],
        drainagePlaneInstalled: json["drainagePlaneInstalled"],
        sidingPutBack: json["sidingPutBack"],
        cornerBracesChecked: json["cornerBracesChecked"],
        blockersChecked: json["blockersChecked"],
      );

  Map<String, dynamic> toJson() => {
        "wallMeasurementsAccurate": wallMeasurementsAccurate,
        "drainagePlaneInstalled": drainagePlaneInstalled,
        "sidingPutBack": sidingPutBack,
        "cornerBracesChecked": cornerBracesChecked,
        "blockersChecked": blockersChecked,
      };
}
