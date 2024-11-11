// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_entry_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetEntryResponseDataImpl _$$GetEntryResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$GetEntryResponseDataImpl(
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetEntryResponseDataImplToJson(
        _$GetEntryResponseDataImpl instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
    };
