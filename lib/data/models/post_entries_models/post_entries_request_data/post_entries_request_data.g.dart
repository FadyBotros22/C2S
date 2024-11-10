// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_entries_request_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostEntriesRequestDataImpl _$$PostEntriesRequestDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PostEntriesRequestDataImpl(
      programType:
          $enumDecodeNullable(_$ProgramTypeEnumMap, json['programType']),
      doeJob: json['doeJob'] as bool?,
      date: json['date'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      coordinates: json['coordinates'] == null
          ? null
          : Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>),
      jobId: json['jobId'] as String?,
    );

Map<String, dynamic> _$$PostEntriesRequestDataImplToJson(
        _$PostEntriesRequestDataImpl instance) =>
    <String, dynamic>{
      'programType': _$ProgramTypeEnumMap[instance.programType],
      'doeJob': instance.doeJob,
      'date': instance.date,
      'address': instance.address,
      'city': instance.city,
      'coordinates': instance.coordinates,
      'jobId': instance.jobId,
    };

const _$ProgramTypeEnumMap = {
  ProgramType.clearesult: 'clearesult',
  ProgramType.rise: 'rise',
  ProgramType.self_help: 'self_help',
  ProgramType.cfc: 'cfc',
};
