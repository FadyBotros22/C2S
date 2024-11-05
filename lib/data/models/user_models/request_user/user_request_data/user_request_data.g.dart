// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_request_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserRequestDataImpl _$$UserRequestDataImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRequestDataImpl(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      device: Device.fromJson(json['device'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserRequestDataImplToJson(
        _$UserRequestDataImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'device': instance.device,
    };
