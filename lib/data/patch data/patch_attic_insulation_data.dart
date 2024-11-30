// To parse this JSON data, do
//
//     final patchAtticInsulationData = patchAtticInsulationDataFromJson(jsonString);

import 'dart:convert';

PatchAtticInsulationData patchAtticInsulationDataFromJson(String str) =>
    PatchAtticInsulationData.fromJson(json.decode(str));

String patchAtticInsulationDataToJson(PatchAtticInsulationData data) =>
    json.encode(data.toJson());

class PatchAtticInsulationData {
  AtticInsulation atticInsulation;

  PatchAtticInsulationData({
    required this.atticInsulation,
  });

  factory PatchAtticInsulationData.fromJson(Map<String, dynamic> json) =>
      PatchAtticInsulationData(
        atticInsulation: AtticInsulation.fromJson(json["atticInsulation"]),
      );

  Map<String, dynamic> toJson() => {
        "atticInsulation": atticInsulation.toJson(),
      };
}

class AtticInsulation {
  bool onWorkOrder;
  Checklist checklist;
  String inaccurateMeasurementsNotes;
  String notes;
  List<String> atticInsulationPic;

  AtticInsulation({
    required this.onWorkOrder,
    required this.checklist,
    required this.inaccurateMeasurementsNotes,
    required this.notes,
    required this.atticInsulationPic,
  });

  factory AtticInsulation.fromJson(Map<String, dynamic> json) =>
      AtticInsulation(
        onWorkOrder: json["onWorkOrder"],
        checklist: Checklist.fromJson(json["checklist"]),
        inaccurateMeasurementsNotes: json["inaccurateMeasurementsNotes"],
        notes: json["notes"],
        atticInsulationPic:
            List<String>.from(json["atticInsulationPic"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "onWorkOrder": onWorkOrder,
        "checklist": checklist.toJson(),
        "inaccurateMeasurementsNotes": inaccurateMeasurementsNotes,
        "notes": notes,
        "atticInsulationPic":
            List<dynamic>.from(atticInsulationPic.map((x) => x)),
      };
}

class Checklist {
  String insulationMarkersInstalled;
  String lightsDammed;
  String bathroomFansVentedOut;
  String bathroomFansDammed;
  String measurementsAreAccurate;
  String venilationChecked;
  String chimneyDammed;

  Checklist({
    required this.insulationMarkersInstalled,
    required this.lightsDammed,
    required this.bathroomFansVentedOut,
    required this.bathroomFansDammed,
    required this.measurementsAreAccurate,
    required this.venilationChecked,
    required this.chimneyDammed,
  });

  factory Checklist.fromJson(Map<String, dynamic> json) => Checklist(
        insulationMarkersInstalled: json["insulationMarkersInstalled"],
        lightsDammed: json["lightsDammed"],
        bathroomFansVentedOut: json["bathroomFansVentedOut"],
        bathroomFansDammed: json["bathroomFansDammed"],
        measurementsAreAccurate: json["measurementsAreAccurate"],
        venilationChecked: json["venilationChecked"],
        chimneyDammed: json["chimneyDammed"],
      );

  Map<String, dynamic> toJson() => {
        "insulationMarkersInstalled": insulationMarkersInstalled,
        "lightsDammed": lightsDammed,
        "bathroomFansVentedOut": bathroomFansVentedOut,
        "bathroomFansDammed": bathroomFansDammed,
        "measurementsAreAccurate": measurementsAreAccurate,
        "venilationChecked": venilationChecked,
        "chimneyDammed": chimneyDammed,
      };
}
