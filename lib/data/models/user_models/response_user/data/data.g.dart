// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      device: Device.fromJson(json['device'] as Map<String, dynamic>),
      authToken: json['authToken'] as String,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'device': instance.device,
      'authToken': instance.authToken,
    };
