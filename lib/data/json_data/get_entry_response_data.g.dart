// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_entry_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetEntryResponseDataImpl _$$GetEntryResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$GetEntryResponseDataImpl(
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetEntryResponseDataImplToJson(
        _$GetEntryResponseDataImpl instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      id: json['id'] as String?,
      programType: json['programType'] as String?,
      doeJob: json['doeJob'] as bool?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      coordinates: json['coordinates'] == null
          ? null
          : Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>),
      createdBy: json['createdBy'] as String?,
      jobId: json['jobId'] as String?,
      progressStep: (json['progressStep'] as num?)?.toInt(),
      date: json['date'] as String?,
      initialWalkthrough: json['initialWalkthrough'] == null
          ? null
          : InitialWalkthrough.fromJson(
              json['initialWalkthrough'] as Map<String, dynamic>),
      airSealing: json['airSealing'] == null
          ? null
          : AirSealing.fromJson(json['airSealing'] as Map<String, dynamic>),
      atticInsulation: json['atticInsulation'] == null
          ? null
          : AtticInsulation.fromJson(
              json['atticInsulation'] as Map<String, dynamic>),
      wallInsulation: json['wallInsulation'] == null
          ? null
          : WallInsulation.fromJson(
              json['wallInsulation'] as Map<String, dynamic>),
      finalWalkthrough: json['finalWalkthrough'] == null
          ? null
          : FinalWalkthrough.fromJson(
              json['finalWalkthrough'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'programType': instance.programType,
      'doeJob': instance.doeJob,
      'address': instance.address,
      'city': instance.city,
      'coordinates': instance.coordinates,
      'createdBy': instance.createdBy,
      'jobId': instance.jobId,
      'progressStep': instance.progressStep,
      'date': instance.date,
      'initialWalkthrough': instance.initialWalkthrough,
      'airSealing': instance.airSealing,
      'atticInsulation': instance.atticInsulation,
      'wallInsulation': instance.wallInsulation,
      'finalWalkthrough': instance.finalWalkthrough,
    };

_$AirSealingImpl _$$AirSealingImplFromJson(Map<String, dynamic> json) =>
    _$AirSealingImpl(
      onWorkOrder: json['onWorkOrder'] as bool?,
      checklist: json['checklist'] == null
          ? null
          : AirSealingChecklist.fromJson(
              json['checklist'] as Map<String, dynamic>),
      notes: json['notes'] as String?,
      sealingQualityPic: (json['sealingQualityPic'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$AirSealingImplToJson(_$AirSealingImpl instance) =>
    <String, dynamic>{
      'onWorkOrder': instance.onWorkOrder,
      'checklist': instance.checklist,
      'notes': instance.notes,
      'sealingQualityPic': instance.sealingQualityPic,
    };

_$AirSealingChecklistImpl _$$AirSealingChecklistImplFromJson(
        Map<String, dynamic> json) =>
    _$AirSealingChecklistImpl(
      mainTopPlateSealed: json['mainTopPlateSealed'] as String?,
      wetWallSealed: json['wetWallSealed'] as String?,
      chimneySealed: json['chimneySealed'] as String?,
      exteriorPlatesSealed: json['exteriorPlatesSealed'] as String?,
      bhatroomFansSealed: json['bhatroomFansSealed'] as String?,
      gableEndsSealed: json['gableEndsSealed'] as String?,
      atticAccessSealed: json['atticAccessSealed'] as String?,
      basementSealed: json['basementSealed'] as String?,
    );

Map<String, dynamic> _$$AirSealingChecklistImplToJson(
        _$AirSealingChecklistImpl instance) =>
    <String, dynamic>{
      'mainTopPlateSealed': instance.mainTopPlateSealed,
      'wetWallSealed': instance.wetWallSealed,
      'chimneySealed': instance.chimneySealed,
      'exteriorPlatesSealed': instance.exteriorPlatesSealed,
      'bhatroomFansSealed': instance.bhatroomFansSealed,
      'gableEndsSealed': instance.gableEndsSealed,
      'atticAccessSealed': instance.atticAccessSealed,
      'basementSealed': instance.basementSealed,
    };

_$AtticInsulationImpl _$$AtticInsulationImplFromJson(
        Map<String, dynamic> json) =>
    _$AtticInsulationImpl(
      onWorkOrder: json['onWorkOrder'] as bool?,
      checklist: json['checklist'] == null
          ? null
          : AtticInsulationChecklist.fromJson(
              json['checklist'] as Map<String, dynamic>),
      inaccurateMeasurementsNotes:
          json['inaccurateMeasurementsNotes'] as String?,
      notes: json['notes'] as String?,
      atticInsulationPic: (json['atticInsulationPic'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$AtticInsulationImplToJson(
        _$AtticInsulationImpl instance) =>
    <String, dynamic>{
      'onWorkOrder': instance.onWorkOrder,
      'checklist': instance.checklist,
      'inaccurateMeasurementsNotes': instance.inaccurateMeasurementsNotes,
      'notes': instance.notes,
      'atticInsulationPic': instance.atticInsulationPic,
    };

_$AtticInsulationChecklistImpl _$$AtticInsulationChecklistImplFromJson(
        Map<String, dynamic> json) =>
    _$AtticInsulationChecklistImpl(
      insulationMarkersInstalled: json['insulationMarkersInstalled'] as String?,
      lightsDammed: json['lightsDammed'] as String?,
      bathroomFansVentedOut: json['bathroomFansVentedOut'] as String?,
      bathroomFansDammed: json['bathroomFansDammed'] as String?,
      measurementsAreAccurate: json['measurementsAreAccurate'] as String?,
      venilationChecked: json['venilationChecked'] as String?,
      chimneyDammed: json['chimneyDammed'] as String?,
    );

Map<String, dynamic> _$$AtticInsulationChecklistImplToJson(
        _$AtticInsulationChecklistImpl instance) =>
    <String, dynamic>{
      'insulationMarkersInstalled': instance.insulationMarkersInstalled,
      'lightsDammed': instance.lightsDammed,
      'bathroomFansVentedOut': instance.bathroomFansVentedOut,
      'bathroomFansDammed': instance.bathroomFansDammed,
      'measurementsAreAccurate': instance.measurementsAreAccurate,
      'venilationChecked': instance.venilationChecked,
      'chimneyDammed': instance.chimneyDammed,
    };

_$CoordinatesImpl _$$CoordinatesImplFromJson(Map<String, dynamic> json) =>
    _$CoordinatesImpl(
      latitude: (json['latitude'] as num?)?.toInt(),
      longitude: (json['longitude'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CoordinatesImplToJson(_$CoordinatesImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_$FinalWalkthroughImpl _$$FinalWalkthroughImplFromJson(
        Map<String, dynamic> json) =>
    _$FinalWalkthroughImpl(
      checklist: json['checklist'] == null
          ? null
          : FinalWalkthroughChecklist.fromJson(
              json['checklist'] as Map<String, dynamic>),
      selfHelpImgs: (json['selfHelpImgs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      contractChanges: json['contractChanges'] as bool?,
      changeOrderBy: json['changeOrderBy'] as String?,
      changeOrdersSpecification: json['changeOrdersSpecification'] as String?,
      changeOrderPics: (json['changeOrderPics'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      notes: json['notes'] as String?,
      postBlowerDoor: (json['postBlowerDoor'] as num?)?.toInt(),
      postBlowerDoorPic: json['postBlowerDoorPic'] as String?,
      certificateOfInsulationPostedNearElectricalPanel:
          json['certificateOfInsulationPostedNearElectricalPanel'] as String?,
      leftConfirmation: json['leftConfirmation'] as bool?,
      bathroomConfirmation: json['bathroomConfirmation'] as bool?,
      qualityPics: (json['qualityPics'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      customerReview: json['customerReview'] as String?,
      contactMethod: json['contactMethod'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
    );

Map<String, dynamic> _$$FinalWalkthroughImplToJson(
        _$FinalWalkthroughImpl instance) =>
    <String, dynamic>{
      'checklist': instance.checklist,
      'selfHelpImgs': instance.selfHelpImgs,
      'contractChanges': instance.contractChanges,
      'changeOrderBy': instance.changeOrderBy,
      'changeOrdersSpecification': instance.changeOrdersSpecification,
      'changeOrderPics': instance.changeOrderPics,
      'notes': instance.notes,
      'postBlowerDoor': instance.postBlowerDoor,
      'postBlowerDoorPic': instance.postBlowerDoorPic,
      'certificateOfInsulationPostedNearElectricalPanel':
          instance.certificateOfInsulationPostedNearElectricalPanel,
      'leftConfirmation': instance.leftConfirmation,
      'bathroomConfirmation': instance.bathroomConfirmation,
      'qualityPics': instance.qualityPics,
      'customerReview': instance.customerReview,
      'contactMethod': instance.contactMethod,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
    };

_$FinalWalkthroughChecklistImpl _$$FinalWalkthroughChecklistImplFromJson(
        Map<String, dynamic> json) =>
    _$FinalWalkthroughChecklistImpl(
      airSealing: json['airSealing'] as String?,
      zonalPressure: json['zonalPressure'] as String?,
      accuVents: json['accuVents'] as String?,
      finishedAttic: json['finishedAttic'] as String?,
      certificateofInsulation: json['certificateofInsulation'] as String?,
      generalQualityPictures: json['generalQualityPictures'] as String?,
    );

Map<String, dynamic> _$$FinalWalkthroughChecklistImplToJson(
        _$FinalWalkthroughChecklistImpl instance) =>
    <String, dynamic>{
      'airSealing': instance.airSealing,
      'zonalPressure': instance.zonalPressure,
      'accuVents': instance.accuVents,
      'finishedAttic': instance.finishedAttic,
      'certificateofInsulation': instance.certificateofInsulation,
      'generalQualityPictures': instance.generalQualityPictures,
    };

_$InitialWalkthroughImpl _$$InitialWalkthroughImplFromJson(
        Map<String, dynamic> json) =>
    _$InitialWalkthroughImpl(
      checklist: json['checklist'] == null
          ? null
          : InitialWalkthroughChecklist.fromJson(
              json['checklist'] as Map<String, dynamic>),
      blowerDoorStatus: json['blowerDoorStatus'] as bool?,
      blowerStartingValue: (json['blowerStartingValue'] as num?)?.toInt(),
      startingBlowerDoorPic: json['startingBlowerDoorPic'] as String?,
      notes: json['notes'] as String?,
      heatingSystemPic: json['heatingSystemPic'] as String?,
      waterHeaterPic: json['waterHeaterPic'] as String?,
      concernsPic: (json['concernsPic'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$InitialWalkthroughImplToJson(
        _$InitialWalkthroughImpl instance) =>
    <String, dynamic>{
      'checklist': instance.checklist,
      'blowerDoorStatus': instance.blowerDoorStatus,
      'blowerStartingValue': instance.blowerStartingValue,
      'startingBlowerDoorPic': instance.startingBlowerDoorPic,
      'notes': instance.notes,
      'heatingSystemPic': instance.heatingSystemPic,
      'waterHeaterPic': instance.waterHeaterPic,
      'concernsPic': instance.concernsPic,
    };

_$InitialWalkthroughChecklistImpl _$$InitialWalkthroughChecklistImplFromJson(
        Map<String, dynamic> json) =>
    _$InitialWalkthroughChecklistImpl(
      knobAndTube: json['knobAndTube'] as bool?,
      knobAndTubeImg: json['knobAndTubeImg'] as String?,
      abestos: json['abestos'] as bool?,
      abestosImg: json['abestosImg'] as String?,
      titlesOnSite: json['titlesOnSite'] as bool?,
      titlesOnSiteImg: json['titlesOnSiteImg'] as String?,
      unventedDryers: json['unventedDryers'] as bool?,
      unventedDryersImg: json['unventedDryersImg'] as String?,
      moistureConcerns: json['moistureConcerns'] as bool?,
      moistureConcernsImg: json['moistureConcernsImg'] as String?,
    );

Map<String, dynamic> _$$InitialWalkthroughChecklistImplToJson(
        _$InitialWalkthroughChecklistImpl instance) =>
    <String, dynamic>{
      'knobAndTube': instance.knobAndTube,
      'knobAndTubeImg': instance.knobAndTubeImg,
      'abestos': instance.abestos,
      'abestosImg': instance.abestosImg,
      'titlesOnSite': instance.titlesOnSite,
      'titlesOnSiteImg': instance.titlesOnSiteImg,
      'unventedDryers': instance.unventedDryers,
      'unventedDryersImg': instance.unventedDryersImg,
      'moistureConcerns': instance.moistureConcerns,
      'moistureConcernsImg': instance.moistureConcernsImg,
    };

_$WallInsulationImpl _$$WallInsulationImplFromJson(Map<String, dynamic> json) =>
    _$WallInsulationImpl(
      onWorkOrder: json['onWorkOrder'] as bool?,
      checklist: json['checklist'] == null
          ? null
          : WallInsulationChecklist.fromJson(
              json['checklist'] as Map<String, dynamic>),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$WallInsulationImplToJson(
        _$WallInsulationImpl instance) =>
    <String, dynamic>{
      'onWorkOrder': instance.onWorkOrder,
      'checklist': instance.checklist,
      'notes': instance.notes,
    };

_$WallInsulationChecklistImpl _$$WallInsulationChecklistImplFromJson(
        Map<String, dynamic> json) =>
    _$WallInsulationChecklistImpl(
      wallMeasurementsAccurate: json['wallMeasurementsAccurate'] as bool?,
      drainagePlaneInstalled: json['drainagePlaneInstalled'] as bool?,
      sidingPutBack: json['sidingPutBack'] as bool?,
      cornerBracesChecked: json['cornerBracesChecked'] as bool?,
      blockersChecked: json['blockersChecked'] as bool?,
    );

Map<String, dynamic> _$$WallInsulationChecklistImplToJson(
        _$WallInsulationChecklistImpl instance) =>
    <String, dynamic>{
      'wallMeasurementsAccurate': instance.wallMeasurementsAccurate,
      'drainagePlaneInstalled': instance.drainagePlaneInstalled,
      'sidingPutBack': instance.sidingPutBack,
      'cornerBracesChecked': instance.cornerBracesChecked,
      'blockersChecked': instance.blockersChecked,
    };

_$MetaImpl _$$MetaImplFromJson(Map<String, dynamic> json) => _$MetaImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$MetaImplToJson(_$MetaImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
