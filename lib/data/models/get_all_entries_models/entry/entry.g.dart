// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EntryImpl _$$EntryImplFromJson(Map<String, dynamic> json) => _$EntryImpl(
      id: json['id'] as String,
      createdBy: json['createdBy'] as String,
      jobId: json['jobId'] as String,
      progressStep: (json['progressStep'] as num).toInt(),
      date: DateTime.parse(json['date'] as String),
      address: json['address'] as String?,
    );

Map<String, dynamic> _$$EntryImplToJson(_$EntryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdBy': instance.createdBy,
      'jobId': instance.jobId,
      'progressStep': instance.progressStep,
      'date': instance.date.toIso8601String(),
      'address': instance.address,
    };
