// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patch_base.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatchBaseDataImpl _$$PatchBaseDataImplFromJson(Map<String, dynamic> json) =>
    _$PatchBaseDataImpl(
      baseData: json['baseData'] == null
          ? null
          : BaseData.fromJson(json['baseData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PatchBaseDataImplToJson(_$PatchBaseDataImpl instance) =>
    <String, dynamic>{
      'baseData': instance.baseData,
    };

_$BaseDataImpl _$$BaseDataImplFromJson(Map<String, dynamic> json) =>
    _$BaseDataImpl(
      programType: json['programType'] as String?,
      doeJob: json['doeJob'] as bool?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$BaseDataImplToJson(_$BaseDataImpl instance) =>
    <String, dynamic>{
      'programType': instance.programType,
      'doeJob': instance.doeJob,
      'address': instance.address,
      'city': instance.city,
      'date': instance.date,
    };
