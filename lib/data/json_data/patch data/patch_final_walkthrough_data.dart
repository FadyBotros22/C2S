// To parse this JSON data, do
//
//     final patchFinalWalkthroughData = patchFinalWalkthroughDataFromJson(jsonString);

import 'dart:convert';

PatchFinalWalkthroughData patchFinalWalkthroughDataFromJson(String str) =>
    PatchFinalWalkthroughData.fromJson(json.decode(str));

String patchFinalWalkthroughDataToJson(PatchFinalWalkthroughData data) =>
    json.encode(data.toJson());

class PatchFinalWalkthroughData {
  FinalWalkthrough finalWalkthrough;

  PatchFinalWalkthroughData({
    required this.finalWalkthrough,
  });

  factory PatchFinalWalkthroughData.fromJson(Map<String, dynamic> json) =>
      PatchFinalWalkthroughData(
        finalWalkthrough: FinalWalkthrough.fromJson(json["finalWalkthrough"]),
      );

  Map<String, dynamic> toJson() => {
        "finalWalkthrough": finalWalkthrough.toJson(),
      };
}

class FinalWalkthrough {
  Checklist checklist;
  List<String> selfHelpImgs;
  bool contractChanges;
  String changeOrderBy;
  String changeOrdersSpecification;
  List<String> changeOrderPics;
  String notes;
  int postBlowerDoor;
  String postBlowerDoorPic;
  String certificateOfInsulationPostedNearElectricalPanel;
  bool leftConfirmation;
  bool bathroomConfirmation;
  List<String> qualityPics;
  String customerReview;
  String contactMethod;
  String email;
  String phoneNumber;

  FinalWalkthrough({
    required this.checklist,
    required this.selfHelpImgs,
    required this.contractChanges,
    required this.changeOrderBy,
    required this.changeOrdersSpecification,
    required this.changeOrderPics,
    required this.notes,
    required this.postBlowerDoor,
    required this.postBlowerDoorPic,
    required this.certificateOfInsulationPostedNearElectricalPanel,
    required this.leftConfirmation,
    required this.bathroomConfirmation,
    required this.qualityPics,
    required this.customerReview,
    required this.contactMethod,
    required this.email,
    required this.phoneNumber,
  });

  factory FinalWalkthrough.fromJson(Map<String, dynamic> json) =>
      FinalWalkthrough(
        checklist: Checklist.fromJson(json["checklist"]),
        selfHelpImgs: List<String>.from(json["selfHelpImgs"].map((x) => x)),
        contractChanges: json["contractChanges"],
        changeOrderBy: json["changeOrderBy"],
        changeOrdersSpecification: json["changeOrdersSpecification"],
        changeOrderPics:
            List<String>.from(json["changeOrderPics"].map((x) => x)),
        notes: json["notes"],
        postBlowerDoor: json["postBlowerDoor"],
        postBlowerDoorPic: json["postBlowerDoorPic"],
        certificateOfInsulationPostedNearElectricalPanel:
            json["certificateOfInsulationPostedNearElectricalPanel"],
        leftConfirmation: json["leftConfirmation"],
        bathroomConfirmation: json["bathroomConfirmation"],
        qualityPics: List<String>.from(json["qualityPics"].map((x) => x)),
        customerReview: json["customerReview"],
        contactMethod: json["contactMethod"],
        email: json["email"],
        phoneNumber: json["phoneNumber"],
      );

  Map<String, dynamic> toJson() => {
        "checklist": checklist.toJson(),
        "selfHelpImgs": List<dynamic>.from(selfHelpImgs.map((x) => x)),
        "contractChanges": contractChanges,
        "changeOrderBy": changeOrderBy,
        "changeOrdersSpecification": changeOrdersSpecification,
        "changeOrderPics": List<dynamic>.from(changeOrderPics.map((x) => x)),
        "notes": notes,
        "postBlowerDoor": postBlowerDoor,
        "postBlowerDoorPic": postBlowerDoorPic,
        "certificateOfInsulationPostedNearElectricalPanel":
            certificateOfInsulationPostedNearElectricalPanel,
        "leftConfirmation": leftConfirmation,
        "bathroomConfirmation": bathroomConfirmation,
        "qualityPics": List<dynamic>.from(qualityPics.map((x) => x)),
        "customerReview": customerReview,
        "contactMethod": contactMethod,
        "email": email,
        "phoneNumber": phoneNumber,
      };
}

class Checklist {
  String airSealing;
  String zonalPressure;
  String accuVents;
  String finishedAttic;
  String certificateofInsulation;
  String generalQualityPictures;

  Checklist({
    required this.airSealing,
    required this.zonalPressure,
    required this.accuVents,
    required this.finishedAttic,
    required this.certificateofInsulation,
    required this.generalQualityPictures,
  });

  factory Checklist.fromJson(Map<String, dynamic> json) => Checklist(
        airSealing: json["airSealing"],
        zonalPressure: json["zonalPressure"],
        accuVents: json["accuVents"],
        finishedAttic: json["finishedAttic"],
        certificateofInsulation: json["certificateofInsulation"],
        generalQualityPictures: json["generalQualityPictures"],
      );

  Map<String, dynamic> toJson() => {
        "airSealing": airSealing,
        "zonalPressure": zonalPressure,
        "accuVents": accuVents,
        "finishedAttic": finishedAttic,
        "certificateofInsulation": certificateofInsulation,
        "generalQualityPictures": generalQualityPictures,
      };
}
