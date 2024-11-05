// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wall_insulation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
