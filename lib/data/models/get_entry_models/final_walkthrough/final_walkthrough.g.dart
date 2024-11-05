// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'final_walkthrough.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
