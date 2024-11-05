// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patch_air_sealing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PatchAirSealingData _$PatchAirSealingDataFromJson(Map<String, dynamic> json) {
  return _PatchAirSealingData.fromJson(json);
}

/// @nodoc
mixin _$PatchAirSealingData {
  AirSealing get airSealing => throw _privateConstructorUsedError;

  /// Serializes this PatchAirSealingData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PatchAirSealingData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PatchAirSealingDataCopyWith<PatchAirSealingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatchAirSealingDataCopyWith<$Res> {
  factory $PatchAirSealingDataCopyWith(
          PatchAirSealingData value, $Res Function(PatchAirSealingData) then) =
      _$PatchAirSealingDataCopyWithImpl<$Res, PatchAirSealingData>;
  @useResult
  $Res call({AirSealing airSealing});

  $AirSealingCopyWith<$Res> get airSealing;
}

/// @nodoc
class _$PatchAirSealingDataCopyWithImpl<$Res, $Val extends PatchAirSealingData>
    implements $PatchAirSealingDataCopyWith<$Res> {
  _$PatchAirSealingDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PatchAirSealingData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? airSealing = null,
  }) {
    return _then(_value.copyWith(
      airSealing: null == airSealing
          ? _value.airSealing
          : airSealing // ignore: cast_nullable_to_non_nullable
              as AirSealing,
    ) as $Val);
  }

  /// Create a copy of PatchAirSealingData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AirSealingCopyWith<$Res> get airSealing {
    return $AirSealingCopyWith<$Res>(_value.airSealing, (value) {
      return _then(_value.copyWith(airSealing: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PatchAirSealingDataImplCopyWith<$Res>
    implements $PatchAirSealingDataCopyWith<$Res> {
  factory _$$PatchAirSealingDataImplCopyWith(_$PatchAirSealingDataImpl value,
          $Res Function(_$PatchAirSealingDataImpl) then) =
      __$$PatchAirSealingDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AirSealing airSealing});

  @override
  $AirSealingCopyWith<$Res> get airSealing;
}

/// @nodoc
class __$$PatchAirSealingDataImplCopyWithImpl<$Res>
    extends _$PatchAirSealingDataCopyWithImpl<$Res, _$PatchAirSealingDataImpl>
    implements _$$PatchAirSealingDataImplCopyWith<$Res> {
  __$$PatchAirSealingDataImplCopyWithImpl(_$PatchAirSealingDataImpl _value,
      $Res Function(_$PatchAirSealingDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PatchAirSealingData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? airSealing = null,
  }) {
    return _then(_$PatchAirSealingDataImpl(
      airSealing: null == airSealing
          ? _value.airSealing
          : airSealing // ignore: cast_nullable_to_non_nullable
              as AirSealing,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatchAirSealingDataImpl implements _PatchAirSealingData {
  const _$PatchAirSealingDataImpl({required this.airSealing});

  factory _$PatchAirSealingDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatchAirSealingDataImplFromJson(json);

  @override
  final AirSealing airSealing;

  @override
  String toString() {
    return 'PatchAirSealingData(airSealing: $airSealing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatchAirSealingDataImpl &&
            (identical(other.airSealing, airSealing) ||
                other.airSealing == airSealing));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, airSealing);

  /// Create a copy of PatchAirSealingData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PatchAirSealingDataImplCopyWith<_$PatchAirSealingDataImpl> get copyWith =>
      __$$PatchAirSealingDataImplCopyWithImpl<_$PatchAirSealingDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatchAirSealingDataImplToJson(
      this,
    );
  }
}

abstract class _PatchAirSealingData implements PatchAirSealingData {
  const factory _PatchAirSealingData({required final AirSealing airSealing}) =
      _$PatchAirSealingDataImpl;

  factory _PatchAirSealingData.fromJson(Map<String, dynamic> json) =
      _$PatchAirSealingDataImpl.fromJson;

  @override
  AirSealing get airSealing;

  /// Create a copy of PatchAirSealingData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PatchAirSealingDataImplCopyWith<_$PatchAirSealingDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
