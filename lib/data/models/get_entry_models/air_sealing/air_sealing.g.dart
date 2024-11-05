// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'air_sealing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
