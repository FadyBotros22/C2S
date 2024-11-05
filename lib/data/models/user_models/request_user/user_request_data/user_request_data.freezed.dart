// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_request_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserRequestData _$UserRequestDataFromJson(Map<String, dynamic> json) {
  return _UserRequestData.fromJson(json);
}

/// @nodoc
mixin _$UserRequestData {
  User get user => throw _privateConstructorUsedError;
  Device get device => throw _privateConstructorUsedError;

  /// Serializes this UserRequestData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserRequestData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserRequestDataCopyWith<UserRequestData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRequestDataCopyWith<$Res> {
  factory $UserRequestDataCopyWith(
          UserRequestData value, $Res Function(UserRequestData) then) =
      _$UserRequestDataCopyWithImpl<$Res, UserRequestData>;
  @useResult
  $Res call({User user, Device device});

  $UserCopyWith<$Res> get user;
  $DeviceCopyWith<$Res> get device;
}

/// @nodoc
class _$UserRequestDataCopyWithImpl<$Res, $Val extends UserRequestData>
    implements $UserRequestDataCopyWith<$Res> {
  _$UserRequestDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserRequestData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? device = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as Device,
    ) as $Val);
  }

  /// Create a copy of UserRequestData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of UserRequestData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeviceCopyWith<$Res> get device {
    return $DeviceCopyWith<$Res>(_value.device, (value) {
      return _then(_value.copyWith(device: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserRequestDataImplCopyWith<$Res>
    implements $UserRequestDataCopyWith<$Res> {
  factory _$$UserRequestDataImplCopyWith(_$UserRequestDataImpl value,
          $Res Function(_$UserRequestDataImpl) then) =
      __$$UserRequestDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user, Device device});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $DeviceCopyWith<$Res> get device;
}

/// @nodoc
class __$$UserRequestDataImplCopyWithImpl<$Res>
    extends _$UserRequestDataCopyWithImpl<$Res, _$UserRequestDataImpl>
    implements _$$UserRequestDataImplCopyWith<$Res> {
  __$$UserRequestDataImplCopyWithImpl(
      _$UserRequestDataImpl _value, $Res Function(_$UserRequestDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserRequestData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? device = null,
  }) {
    return _then(_$UserRequestDataImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as Device,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserRequestDataImpl implements _UserRequestData {
  const _$UserRequestDataImpl({required this.user, required this.device});

  factory _$UserRequestDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRequestDataImplFromJson(json);

  @override
  final User user;
  @override
  final Device device;

  @override
  String toString() {
    return 'UserRequestData(user: $user, device: $device)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRequestDataImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.device, device) || other.device == device));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, device);

  /// Create a copy of UserRequestData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRequestDataImplCopyWith<_$UserRequestDataImpl> get copyWith =>
      __$$UserRequestDataImplCopyWithImpl<_$UserRequestDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRequestDataImplToJson(
      this,
    );
  }
}

abstract class _UserRequestData implements UserRequestData {
  const factory _UserRequestData(
      {required final User user,
      required final Device device}) = _$UserRequestDataImpl;

  factory _UserRequestData.fromJson(Map<String, dynamic> json) =
      _$UserRequestDataImpl.fromJson;

  @override
  User get user;
  @override
  Device get device;

  /// Create a copy of UserRequestData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserRequestDataImplCopyWith<_$UserRequestDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
