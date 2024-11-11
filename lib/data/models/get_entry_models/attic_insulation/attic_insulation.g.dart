// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attic_insulation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
