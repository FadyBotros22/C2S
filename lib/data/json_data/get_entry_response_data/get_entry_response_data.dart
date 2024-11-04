// To parse this JSON data, do
//
//     final getEntryResponseData = getEntryResponseDataFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_entry_response_data.freezed.dart';
part 'get_entry_response_data.g.dart';

GetEntryResponseData getEntryResponseDataFromJson(String str) =>
    GetEntryResponseData.fromJson(json.decode(str));

String getEntryResponseDataToJson(GetEntryResponseData data) =>
    json.encode(data.toJson());

@freezed
class GetEntryResponseData with _$GetEntryResponseData {
  const factory GetEntryResponseData({
    Meta? meta,
    Data? data,
  }) = _GetEntryResponseData;

  factory GetEntryResponseData.fromJson(Map<String, dynamic> json) =>
      _$GetEntryResponseDataFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    String? id,
    String? programType,
    bool? doeJob,
    String? address,
    String? city,
    Coordinates? coordinates,
    String? createdBy,
    String? jobId,
    int? progressStep,
    String? date,
    InitialWalkthrough? initialWalkthrough,
    AirSealing? airSealing,
    AtticInsulation? atticInsulation,
    WallInsulation? wallInsulation,
    FinalWalkthrough? finalWalkthrough,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class AirSealing with _$AirSealing {
  const factory AirSealing({
    bool? onWorkOrder,
    AirSealingChecklist? checklist,
    String? notes,
    List<String>? sealingQualityPic,
  }) = _AirSealing;

  factory AirSealing.fromJson(Map<String, dynamic> json) =>
      _$AirSealingFromJson(json);
}

@freezed
class AirSealingChecklist with _$AirSealingChecklist {
  const factory AirSealingChecklist({
    String? mainTopPlateSealed,
    String? wetWallSealed,
    String? chimneySealed,
    String? exteriorPlatesSealed,
    String? bhatroomFansSealed,
    String? gableEndsSealed,
    String? atticAccessSealed,
    String? basementSealed,
  }) = _AirSealingChecklist;

  factory AirSealingChecklist.fromJson(Map<String, dynamic> json) =>
      _$AirSealingChecklistFromJson(json);
}

@freezed
class AtticInsulation with _$AtticInsulation {
  const factory AtticInsulation({
    bool? onWorkOrder,
    AtticInsulationChecklist? checklist,
    String? inaccurateMeasurementsNotes,
    String? notes,
    List<String>? atticInsulationPic,
  }) = _AtticInsulation;

  factory AtticInsulation.fromJson(Map<String, dynamic> json) =>
      _$AtticInsulationFromJson(json);
}

@freezed
class AtticInsulationChecklist with _$AtticInsulationChecklist {
  const factory AtticInsulationChecklist({
    String? insulationMarkersInstalled,
    String? lightsDammed,
    String? bathroomFansVentedOut,
    String? bathroomFansDammed,
    String? measurementsAreAccurate,
    String? venilationChecked,
    String? chimneyDammed,
  }) = _AtticInsulationChecklist;

  factory AtticInsulationChecklist.fromJson(Map<String, dynamic> json) =>
      _$AtticInsulationChecklistFromJson(json);
}

@freezed
class Coordinates with _$Coordinates {
  const factory Coordinates({
    int? latitude,
    int? longitude,
  }) = _Coordinates;

  factory Coordinates.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesFromJson(json);
}

@freezed
class FinalWalkthrough with _$FinalWalkthrough {
  const factory FinalWalkthrough({
    FinalWalkthroughChecklist? checklist,
    List<String>? selfHelpImgs,
    bool? contractChanges,
    String? changeOrderBy,
    String? changeOrdersSpecification,
    List<String>? changeOrderPics,
    String? notes,
    int? postBlowerDoor,
    String? postBlowerDoorPic,
    String? certificateOfInsulationPostedNearElectricalPanel,
    bool? leftConfirmation,
    bool? bathroomConfirmation,
    List<String>? qualityPics,
    String? customerReview,
    String? contactMethod,
    String? email,
    String? phoneNumber,
  }) = _FinalWalkthrough;

  factory FinalWalkthrough.fromJson(Map<String, dynamic> json) =>
      _$FinalWalkthroughFromJson(json);
}

@freezed
class FinalWalkthroughChecklist with _$FinalWalkthroughChecklist {
  const factory FinalWalkthroughChecklist({
    String? airSealing,
    String? zonalPressure,
    String? accuVents,
    String? finishedAttic,
    String? certificateofInsulation,
    String? generalQualityPictures,
  }) = _FinalWalkthroughChecklist;

  factory FinalWalkthroughChecklist.fromJson(Map<String, dynamic> json) =>
      _$FinalWalkthroughChecklistFromJson(json);
}

@freezed
class InitialWalkthrough with _$InitialWalkthrough {
  const factory InitialWalkthrough({
    InitialWalkthroughChecklist? checklist,
    bool? blowerDoorStatus,
    int? blowerStartingValue,
    String? startingBlowerDoorPic,
    String? notes,
    String? heatingSystemPic,
    String? waterHeaterPic,
    List<String>? concernsPic,
  }) = _InitialWalkthrough;

  factory InitialWalkthrough.fromJson(Map<String, dynamic> json) =>
      _$InitialWalkthroughFromJson(json);
}

@freezed
class InitialWalkthroughChecklist with _$InitialWalkthroughChecklist {
  const factory InitialWalkthroughChecklist({
    bool? knobAndTube,
    String? knobAndTubeImg,
    bool? abestos,
    String? abestosImg,
    bool? titlesOnSite,
    String? titlesOnSiteImg,
    bool? unventedDryers,
    String? unventedDryersImg,
    bool? moistureConcerns,
    String? moistureConcernsImg,
  }) = _InitialWalkthroughChecklist;

  factory InitialWalkthroughChecklist.fromJson(Map<String, dynamic> json) =>
      _$InitialWalkthroughChecklistFromJson(json);
}

@freezed
class WallInsulation with _$WallInsulation {
  const factory WallInsulation({
    bool? onWorkOrder,
    WallInsulationChecklist? checklist,
    String? notes,
  }) = _WallInsulation;

  factory WallInsulation.fromJson(Map<String, dynamic> json) =>
      _$WallInsulationFromJson(json);
}

@freezed
class WallInsulationChecklist with _$WallInsulationChecklist {
  const factory WallInsulationChecklist({
    bool? wallMeasurementsAccurate,
    bool? drainagePlaneInstalled,
    bool? sidingPutBack,
    bool? cornerBracesChecked,
    bool? blockersChecked,
  }) = _WallInsulationChecklist;

  factory WallInsulationChecklist.fromJson(Map<String, dynamic> json) =>
      _$WallInsulationChecklistFromJson(json);
}

@freezed
class Meta with _$Meta {
  const factory Meta({
    int? status,
    String? message,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}
