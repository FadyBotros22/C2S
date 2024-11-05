// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      id: json['id'] as String,
      createdBy: json['createdBy'] as String,
      jobId: json['jobId'] as String,
      progressStep: (json['progressStep'] as num).toInt(),
      date: DateTime.parse(json['date'] as String),
      programType: json['programType'] as String,
      address: json['address'] as String,
      city: json['city'] as String,
      coordinates:
          Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdBy': instance.createdBy,
      'jobId': instance.jobId,
      'progressStep': instance.progressStep,
      'date': instance.date.toIso8601String(),
      'programType': instance.programType,
      'address': instance.address,
      'city': instance.city,
      'coordinates': instance.coordinates,
    };
