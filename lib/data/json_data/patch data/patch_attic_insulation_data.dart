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
  bool? onWorkOrder;
  Checklist? checklist;
  String? inaccurateMeasurementsNotes;
  String? notes;
  List<String>? atticInsulationPic;

  AtticInsulation({
    this.onWorkOrder,
    this.checklist,
    this.inaccurateMeasurementsNotes,
    this.notes,
    this.atticInsulationPic,
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
        "checklist": checklist?.toJson(),
        "inaccurateMeasurementsNotes": inaccurateMeasurementsNotes,
        "notes": notes,
        "atticInsulationPic": atticInsulationPic == null
            ? []
            : List<dynamic>.from(atticInsulationPic!.map((x) => x)),
      };
}

class Checklist {
  String? insulationMarkersInstalled;
  String? lightsDammed;
  String? bathroomFansVentedOut;
  String? bathroomFansDammed;
  String? measurementsAreAccurate;
  String? venilationChecked;
  String? chimneyDammed;

  Checklist({
    this.insulationMarkersInstalled,
    this.lightsDammed,
    this.bathroomFansVentedOut,
    this.bathroomFansDammed,
    this.measurementsAreAccurate,
    this.venilationChecked,
    this.chimneyDammed,
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
