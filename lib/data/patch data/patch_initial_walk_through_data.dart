// To parse this JSON data, do
//
//     final patchInitialWalkThroughData = patchInitialWalkThroughDataFromJson(jsonString);

import 'dart:convert';

PatchInitialWalkThroughData patchInitialWalkThroughDataFromJson(String str) =>
    PatchInitialWalkThroughData.fromJson(json.decode(str));

String patchInitialWalkThroughDataToJson(PatchInitialWalkThroughData data) =>
    json.encode(data.toJson());

class PatchInitialWalkThroughData {
  InitialWalkthrough initialWalkthrough;

  PatchInitialWalkThroughData({
    required this.initialWalkthrough,
  });

  factory PatchInitialWalkThroughData.fromJson(Map<String, dynamic> json) =>
      PatchInitialWalkThroughData(
        initialWalkthrough:
            InitialWalkthrough.fromJson(json["initialWalkthrough"]),
      );

  Map<String, dynamic> toJson() => {
        "initialWalkthrough": initialWalkthrough.toJson(),
      };
}

class InitialWalkthrough {
  Checklist checklist;
  bool blowerDoorStatus;
  int blowerStartingValue;
  String startingBlowerDoorPic;
  String notes;
  String heatingSystemPic;
  String waterHeaterPic;
  List<String> concernsPic;

  InitialWalkthrough({
    required this.checklist,
    required this.blowerDoorStatus,
    required this.blowerStartingValue,
    required this.startingBlowerDoorPic,
    required this.notes,
    required this.heatingSystemPic,
    required this.waterHeaterPic,
    required this.concernsPic,
  });

  factory InitialWalkthrough.fromJson(Map<String, dynamic> json) =>
      InitialWalkthrough(
        checklist: Checklist.fromJson(json["checklist"]),
        blowerDoorStatus: json["blowerDoorStatus"],
        blowerStartingValue: json["blowerStartingValue"],
        startingBlowerDoorPic: json["startingBlowerDoorPic"],
        notes: json["notes"],
        heatingSystemPic: json["heatingSystemPic"],
        waterHeaterPic: json["waterHeaterPic"],
        concernsPic: List<String>.from(json["concernsPic"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "checklist": checklist.toJson(),
        "blowerDoorStatus": blowerDoorStatus,
        "blowerStartingValue": blowerStartingValue,
        "startingBlowerDoorPic": startingBlowerDoorPic,
        "notes": notes,
        "heatingSystemPic": heatingSystemPic,
        "waterHeaterPic": waterHeaterPic,
        "concernsPic": List<dynamic>.from(concernsPic.map((x) => x)),
      };
}

class Checklist {
  bool knobAndTube;
  String knobAndTubeImg;
  bool abestos;
  String abestosImg;
  bool titlesOnSite;
  String titlesOnSiteImg;
  bool unventedDryers;
  String unventedDryersImg;
  bool moistureConcerns;
  String moistureConcernsImg;

  Checklist({
    required this.knobAndTube,
    required this.knobAndTubeImg,
    required this.abestos,
    required this.abestosImg,
    required this.titlesOnSite,
    required this.titlesOnSiteImg,
    required this.unventedDryers,
    required this.unventedDryersImg,
    required this.moistureConcerns,
    required this.moistureConcernsImg,
  });

  factory Checklist.fromJson(Map<String, dynamic> json) => Checklist(
        knobAndTube: json["knobAndTube"],
        knobAndTubeImg: json["knobAndTubeImg"],
        abestos: json["abestos"],
        abestosImg: json["abestosImg"],
        titlesOnSite: json["titlesOnSite"],
        titlesOnSiteImg: json["titlesOnSiteImg"],
        unventedDryers: json["unventedDryers"],
        unventedDryersImg: json["unventedDryersImg"],
        moistureConcerns: json["moistureConcerns"],
        moistureConcernsImg: json["moistureConcernsImg"],
      );

  Map<String, dynamic> toJson() => {
        "knobAndTube": knobAndTube,
        "knobAndTubeImg": knobAndTubeImg,
        "abestos": abestos,
        "abestosImg": abestosImg,
        "titlesOnSite": titlesOnSite,
        "titlesOnSiteImg": titlesOnSiteImg,
        "unventedDryers": unventedDryers,
        "unventedDryersImg": unventedDryersImg,
        "moistureConcerns": moistureConcerns,
        "moistureConcernsImg": moistureConcernsImg,
      };
}
