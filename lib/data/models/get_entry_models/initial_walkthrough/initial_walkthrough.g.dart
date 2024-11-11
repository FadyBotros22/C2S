// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initial_walkthrough.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
