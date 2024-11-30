import 'dart:convert';

GetEntryResponseData getEntryResponseDataFromJson(String str) =>
    GetEntryResponseData.fromJson(json.decode(str));

String getEntryResponseDataToJson(GetEntryResponseData data) =>
    json.encode(data.toJson());

class GetEntryResponseData {
  Meta? meta;
  Data? data;

  GetEntryResponseData({
    this.meta,
    this.data,
  });

  factory GetEntryResponseData.fromJson(Map<String, dynamic>? json) =>
      GetEntryResponseData(
        meta: Meta.fromJson(json?["meta"]),
        data: Data.fromJson(json?["data"]),
      );

  Map<String, dynamic> toJson() => {
        "meta": meta?.toJson(),
        "data": data?.toJson(),
      };
}

class Data {
  String id;
  String programType;
  bool doeJob;
  String address;
  String city;
  Coordinates coordinates;
  String createdBy;
  String jobId;
  int progressStep;
  String date;
  InitialWalkthrough? initialWalkthrough;
  AirSealing? airSealing;
  AtticInsulation? atticInsulation;
  WallInsulation? wallInsulation;
  FinalWalkthrough? finalWalkthrough;

  Data({
    required this.id,
    required this.programType,
    required this.doeJob,
    required this.address,
    required this.city,
    required this.coordinates,
    required this.createdBy,
    required this.jobId,
    required this.progressStep,
    required this.date,
    this.initialWalkthrough,
    this.airSealing,
    this.atticInsulation,
    this.wallInsulation,
    this.finalWalkthrough,
  });

  factory Data.fromJson(Map<String, dynamic>? json) => Data(
        id: json?["id"],
        programType: json?["programType"],
        doeJob: json?["doeJob"] ?? false,
        address: json?["address"],
        city: json?["city"],
        coordinates: Coordinates.fromJson(json?["coordinates"]),
        createdBy: json?["createdBy"],
        jobId: json?["jobId"],
        progressStep: json?["progressStep"],
        date: json?["date"],
        initialWalkthrough:
            InitialWalkthrough.fromJson(json?["initialWalkthrough"]),
        airSealing: AirSealing.fromJson(json?["airSealing"]),
        atticInsulation: AtticInsulation.fromJson(json?["atticInsulation"]),
        wallInsulation: WallInsulation.fromJson(json?["wallInsulation"]),
        finalWalkthrough: FinalWalkthrough.fromJson(json?["finalWalkthrough"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "programType": programType,
        "doeJob": doeJob,
        "address": address,
        "city": city,
        "coordinates": coordinates.toJson(),
        "createdBy": createdBy,
        "jobId": jobId,
        "progressStep": progressStep,
        "date": date,
        "initialWalkthrough": initialWalkthrough?.toJson(),
        "airSealing": airSealing?.toJson(),
        "atticInsulation": atticInsulation?.toJson(),
        "wallInsulation": wallInsulation?.toJson(),
        "finalWalkthrough": finalWalkthrough?.toJson(),
      };
}

class AirSealing {
  bool? onWorkOrder;
  AirSealingChecklist? checklist;
  String? notes;
  List<String>? sealingQualityPic;

  AirSealing({
    this.onWorkOrder,
    this.checklist,
    this.notes,
    this.sealingQualityPic,
  });

  factory AirSealing.fromJson(Map<String, dynamic>? json) => AirSealing(
        onWorkOrder: json?["onWorkOrder"],
        checklist: AirSealingChecklist.fromJson(json?["checklist"]),
        notes: json?["notes"],
        sealingQualityPic: (json?["sealingQualityPic"] != null &&
                json?["sealingQualityPic"].isNotEmpty)
            ? List<String>.from(json?["sealingQualityPic"].map((x) => x))
            : [],
      );

  Map<String, dynamic> toJson() => {
        "onWorkOrder": onWorkOrder,
        "checklist": checklist?.toJson(),
        "notes": notes,
        "sealingQualityPic":
            List<dynamic>.from(sealingQualityPic!.map((x) => x)),
      };
}

class AirSealingChecklist {
  String? mainTopPlateSealed;
  String? wetWallSealed;
  String? exteriorPlatesSealed;
  String? chimneySealed;
  String? bhatroomFansSealed;
  String? gableEndsSealed;
  String? atticAccessSealed;
  String? basementSealed;

  AirSealingChecklist({
    this.mainTopPlateSealed,
    this.wetWallSealed,
    this.chimneySealed,
    this.exteriorPlatesSealed,
    this.bhatroomFansSealed,
    this.gableEndsSealed,
    this.atticAccessSealed,
    this.basementSealed,
  });

  factory AirSealingChecklist.fromJson(Map<String, dynamic>? json) =>
      AirSealingChecklist(
        mainTopPlateSealed: json?["mainTopPlateSealed"],
        wetWallSealed: json?["wetWallSealed"],
        chimneySealed: json?["chimneySealed"],
        exteriorPlatesSealed: json?["exteriorPlatesSealed"],
        bhatroomFansSealed: json?["bhatroomFansSealed"],
        gableEndsSealed: json?["gableEndsSealed"],
        atticAccessSealed: json?["atticAccessSealed"],
        basementSealed: json?["basementSealed"],
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

class AtticInsulation {
  bool? onWorkOrder;
  AtticInsulationChecklist? checklist;
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

  factory AtticInsulation.fromJson(Map<String, dynamic>? json) =>
      AtticInsulation(
        onWorkOrder: json?["onWorkOrder"],
        checklist: AtticInsulationChecklist.fromJson(json?["checklist"]),
        inaccurateMeasurementsNotes: json?["inaccurateMeasurementsNotes"],
        notes: json?["notes"],
        atticInsulationPic: (json?["sealingQualityPic"] != null &&
                json?["sealingQualityPic"].isNotEmpty)
            ? List<String>.from(json?["sealingQualityPic"].map((x) => x))
            : [],
      );

  Map<String, dynamic> toJson() => {
        "onWorkOrder": onWorkOrder,
        "checklist": checklist?.toJson(),
        "inaccurateMeasurementsNotes": inaccurateMeasurementsNotes,
        "notes": notes,
        "atticInsulationPic":
            List<dynamic>.from(atticInsulationPic!.map((x) => x)),
      };
}

class AtticInsulationChecklist {
  String? insulationMarkersInstalled;
  String? lightsDammed;
  String? bathroomFansVentedOut;
  String? bathroomFansDammed;
  String? measurementsAreAccurate;
  String? venilationChecked;
  String? chimneyDammed;

  AtticInsulationChecklist({
    this.insulationMarkersInstalled,
    this.lightsDammed,
    this.bathroomFansVentedOut,
    this.bathroomFansDammed,
    this.measurementsAreAccurate,
    this.venilationChecked,
    this.chimneyDammed,
  });

  factory AtticInsulationChecklist.fromJson(Map<String, dynamic>? json) =>
      AtticInsulationChecklist(
        insulationMarkersInstalled: json?["insulationMarkersInstalled"],
        lightsDammed: json?["lightsDammed"],
        bathroomFansVentedOut: json?["bathroomFansVentedOut"],
        bathroomFansDammed: json?["bathroomFansDammed"],
        measurementsAreAccurate: json?["measurementsAreAccurate"],
        venilationChecked: json?["venilationChecked"],
        chimneyDammed: json?["chimneyDammed"],
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

class FinalWalkthrough {
  FinalWalkthroughChecklist? checklist;
  List<String>? selfHelpImgs;
  bool? contractChanges;
  String? changeOrderBy;
  String? changeOrdersSpecification;
  List<String>? changeOrderPics;
  String? notes;
  int? postBlowerDoor;
  String? postBlowerDoorPic;
  String? certificateOfInsulationPostedNearElectricalPanel;
  bool? leftConfirmation;
  bool? bathroomConfirmation;
  List<String>? qualityPics;
  String? customerReview;
  String? contactMethod;
  String? email;
  String? phoneNumber;

  FinalWalkthrough({
    this.checklist,
    this.selfHelpImgs,
    this.contractChanges,
    this.changeOrderBy,
    this.changeOrdersSpecification,
    this.changeOrderPics,
    this.notes,
    this.postBlowerDoor,
    this.postBlowerDoorPic,
    this.certificateOfInsulationPostedNearElectricalPanel,
    this.leftConfirmation,
    this.bathroomConfirmation,
    this.qualityPics,
    this.customerReview,
    this.contactMethod,
    this.email,
    this.phoneNumber,
  });

  factory FinalWalkthrough.fromJson(Map<String, dynamic>? json) =>
      FinalWalkthrough(
        checklist: FinalWalkthroughChecklist.fromJson(json?["checklist"]),
        selfHelpImgs:
            (json?["selfHelpImgs"] != null && json?["selfHelpImgs"].isNotEmpty)
                ? List<String>.from(json?["selfHelpImgs"].map((x) => x))
                : [],
        contractChanges: json?["contractChanges"],
        changeOrderBy: json?["changeOrderBy"],
        changeOrdersSpecification: json?["changeOrdersSpecification"],
        changeOrderPics: (json?["changeOrderPics"] != null &&
                json?["changeOrderPics"].isNotEmpty)
            ? List<String>.from(json?["changeOrderPics"].map((x) => x))
            : [],
        notes: json?["notes"],
        postBlowerDoor: json?["postBlowerDoor"],
        postBlowerDoorPic: json?["postBlowerDoorPic"],
        certificateOfInsulationPostedNearElectricalPanel:
            json?["certificateOfInsulationPostedNearElectricalPanel"],
        leftConfirmation: json?["leftConfirmation"],
        bathroomConfirmation: json?["bathroomConfirmation"],
        qualityPics:
            (json?["qualityPics"] != null && json?["qualityPics"].isNotEmpty)
                ? List<String>.from(json?["qualityPics"].map((x) => x))
                : [],
        customerReview: json?["customerReview"],
        contactMethod: json?["contactMethod"],
        email: json?["email"],
        phoneNumber: json?["phoneNumber"],
      );

  Map<String, dynamic> toJson() => {
        "checklist": checklist?.toJson(),
        "selfHelpImgs": List<dynamic>.from(selfHelpImgs!.map((x) => x)),
        "contractChanges": contractChanges,
        "changeOrderBy": changeOrderBy,
        "changeOrdersSpecification": changeOrdersSpecification,
        "changeOrderPics": List<dynamic>.from(changeOrderPics!.map((x) => x)),
        "notes": notes,
        "postBlowerDoor": postBlowerDoor,
        "postBlowerDoorPic": postBlowerDoorPic,
        "certificateOfInsulationPostedNearElectricalPanel":
            certificateOfInsulationPostedNearElectricalPanel,
        "leftConfirmation": leftConfirmation,
        "bathroomConfirmation": bathroomConfirmation,
        "qualityPics": List<dynamic>.from(qualityPics!.map((x) => x)),
        "customerReview": customerReview,
        "contactMethod": contactMethod,
        "email": email,
        "phoneNumber": phoneNumber,
      };
}

class FinalWalkthroughChecklist {
  String? airSealing;
  String? zonalPressure;
  String? accuVents;
  String? finishedAttic;
  String? certificateofInsulation;
  String? generalQualityPictures;

  FinalWalkthroughChecklist({
    this.airSealing,
    this.zonalPressure,
    this.accuVents,
    this.finishedAttic,
    this.certificateofInsulation,
    this.generalQualityPictures,
  });

  factory FinalWalkthroughChecklist.fromJson(Map<String, dynamic>? json) =>
      FinalWalkthroughChecklist(
        airSealing: json?["airSealing"],
        zonalPressure: json?["zonalPressure"],
        accuVents: json?["accuVents"],
        finishedAttic: json?["finishedAttic"],
        certificateofInsulation: json?["certificateofInsulation"],
        generalQualityPictures: json?["generalQualityPictures"],
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

class InitialWalkthrough {
  InitialWalkthroughChecklist? checklist;
  bool? blowerDoorStatus;
  int? blowerStartingValue;
  String? startingBlowerDoorPic;
  String? notes;
  String? heatingSystemPic;
  String? waterHeaterPic;
  List<String>? concernsPic;

  InitialWalkthrough({
    this.checklist,
    this.blowerDoorStatus,
    this.blowerStartingValue,
    this.startingBlowerDoorPic,
    this.notes,
    this.heatingSystemPic,
    this.waterHeaterPic,
    this.concernsPic,
  });

  factory InitialWalkthrough.fromJson(Map<String, dynamic>? json) {
    return InitialWalkthrough(
      checklist: InitialWalkthroughChecklist.fromJson(json?["checklist"]),
      blowerDoorStatus: json?["blowerDoorStatus"],
      blowerStartingValue: json?["blowerStartingValue"],
      startingBlowerDoorPic: json?["startingBlowerDoorPic"],
      notes: json?["notes"],
      heatingSystemPic: json?["heatingSystemPic"],
      waterHeaterPic: json?["waterHeaterPic"],
      concernsPic:
          (json?["concernsPic"] != null && json?["concernsPic"].isNotEmpty)
              ? List<String>.from(json?["concernsPic"].map((x) => x))
              : [],
    );
  }

  Map<String, dynamic> toJson() => {
        // "checklist": checklist.toJson(),
        "blowerDoorStatus": blowerDoorStatus,
        "blowerStartingValue": blowerStartingValue,
        "startingBlowerDoorPic": startingBlowerDoorPic,
        "notes": notes,
        "heatingSystemPic": heatingSystemPic,
        "waterHeaterPic": waterHeaterPic,
        // "concernsPic": List<dynamic>.from(concernsPic?.map((x) => x)),
      };
}

class InitialWalkthroughChecklist {
  bool? knobAndTube;
  String? knobAndTubeImg;
  bool? abestos;
  String? abestosImg;
  bool? titlesOnSite;
  String? titlesOnSiteImg;
  bool? unventedDryers;
  String? unventedDryersImg;
  bool? moistureConcerns;
  String? moistureConcernsImg;

  InitialWalkthroughChecklist({
    this.knobAndTube,
    this.knobAndTubeImg,
    this.abestos,
    this.abestosImg,
    this.titlesOnSite,
    this.titlesOnSiteImg,
    this.unventedDryers,
    this.unventedDryersImg,
    this.moistureConcerns,
    this.moistureConcernsImg,
  });

  factory InitialWalkthroughChecklist.fromJson(Map<String, dynamic>? json) =>
      InitialWalkthroughChecklist(
        knobAndTube: json?["knobAndTube"],
        knobAndTubeImg: json?["knobAndTubeImg"],
        abestos: json?["abestos"],
        abestosImg: json?["abestosImg"],
        titlesOnSite: json?["titlesOnSite"],
        titlesOnSiteImg: json?["titlesOnSiteImg"],
        unventedDryers: json?["unventedDryers"],
        unventedDryersImg: json?["unventedDryersImg"],
        moistureConcerns: json?["moistureConcerns"],
        moistureConcernsImg: json?["moistureConcernsImg"],
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

class WallInsulation {
  bool? onWorkOrder;
  WallInsulationChecklist? checklist;
  String? notes;

  WallInsulation({
    this.onWorkOrder,
    this.checklist,
    this.notes,
  });

  factory WallInsulation.fromJson(Map<String, dynamic>? json) => WallInsulation(
        onWorkOrder: json?["onWorkOrder"],
        checklist: WallInsulationChecklist.fromJson(json?["checklist"]),
        notes: json?["notes"],
      );

  Map<String, dynamic> toJson() => {
        "onWorkOrder": onWorkOrder,
        "checklist": checklist?.toJson(),
        "notes": notes,
      };
}

class WallInsulationChecklist {
  bool? wallMeasurementsAccurate;
  bool? drainagePlaneInstalled;
  bool? sidingPutBack;
  bool? cornerBracesChecked;
  bool? blockersChecked;

  WallInsulationChecklist({
    this.wallMeasurementsAccurate,
    this.drainagePlaneInstalled,
    this.sidingPutBack,
    this.cornerBracesChecked,
    this.blockersChecked,
  });

  factory WallInsulationChecklist.fromJson(Map<String, dynamic>? json) =>
      WallInsulationChecklist(
        wallMeasurementsAccurate: json?["wallMeasurementsAccurate"],
        drainagePlaneInstalled: json?["drainagePlaneInstalled"],
        sidingPutBack: json?["sidingPutBack"],
        cornerBracesChecked: json?["cornerBracesChecked"],
        blockersChecked: json?["blockersChecked"],
      );

  Map<String, dynamic> toJson() => {
        "wallMeasurementsAccurate": wallMeasurementsAccurate,
        "drainagePlaneInstalled": drainagePlaneInstalled,
        "sidingPutBack": sidingPutBack,
        "cornerBracesChecked": cornerBracesChecked,
        "blockersChecked": blockersChecked,
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
