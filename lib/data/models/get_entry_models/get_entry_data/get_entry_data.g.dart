// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_entry_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
