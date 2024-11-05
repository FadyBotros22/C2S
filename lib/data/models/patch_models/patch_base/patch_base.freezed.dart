// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patch_base.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PatchBaseData _$PatchBaseDataFromJson(Map<String, dynamic> json) {
  return _PatchBaseData.fromJson(json);
}

/// @nodoc
mixin _$PatchBaseData {
  BaseData? get baseData => throw _privateConstructorUsedError;

  /// Serializes this PatchBaseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PatchBaseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PatchBaseDataCopyWith<PatchBaseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatchBaseDataCopyWith<$Res> {
  factory $PatchBaseDataCopyWith(
          PatchBaseData value, $Res Function(PatchBaseData) then) =
      _$PatchBaseDataCopyWithImpl<$Res, PatchBaseData>;
  @useResult
  $Res call({BaseData? baseData});

  $BaseDataCopyWith<$Res>? get baseData;
}

/// @nodoc
class _$PatchBaseDataCopyWithImpl<$Res, $Val extends PatchBaseData>
    implements $PatchBaseDataCopyWith<$Res> {
  _$PatchBaseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PatchBaseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseData = freezed,
  }) {
    return _then(_value.copyWith(
      baseData: freezed == baseData
          ? _value.baseData
          : baseData // ignore: cast_nullable_to_non_nullable
              as BaseData?,
    ) as $Val);
  }

  /// Create a copy of PatchBaseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseDataCopyWith<$Res>? get baseData {
    if (_value.baseData == null) {
      return null;
    }

    return $BaseDataCopyWith<$Res>(_value.baseData!, (value) {
      return _then(_value.copyWith(baseData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PatchBaseDataImplCopyWith<$Res>
    implements $PatchBaseDataCopyWith<$Res> {
  factory _$$PatchBaseDataImplCopyWith(
          _$PatchBaseDataImpl value, $Res Function(_$PatchBaseDataImpl) then) =
      __$$PatchBaseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BaseData? baseData});

  @override
  $BaseDataCopyWith<$Res>? get baseData;
}

/// @nodoc
class __$$PatchBaseDataImplCopyWithImpl<$Res>
    extends _$PatchBaseDataCopyWithImpl<$Res, _$PatchBaseDataImpl>
    implements _$$PatchBaseDataImplCopyWith<$Res> {
  __$$PatchBaseDataImplCopyWithImpl(
      _$PatchBaseDataImpl _value, $Res Function(_$PatchBaseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PatchBaseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseData = freezed,
  }) {
    return _then(_$PatchBaseDataImpl(
      baseData: freezed == baseData
          ? _value.baseData
          : baseData // ignore: cast_nullable_to_non_nullable
              as BaseData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatchBaseDataImpl implements _PatchBaseData {
  const _$PatchBaseDataImpl({this.baseData});

  factory _$PatchBaseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatchBaseDataImplFromJson(json);

  @override
  final BaseData? baseData;

  @override
  String toString() {
    return 'PatchBaseData(baseData: $baseData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatchBaseDataImpl &&
            (identical(other.baseData, baseData) ||
                other.baseData == baseData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, baseData);

  /// Create a copy of PatchBaseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PatchBaseDataImplCopyWith<_$PatchBaseDataImpl> get copyWith =>
      __$$PatchBaseDataImplCopyWithImpl<_$PatchBaseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatchBaseDataImplToJson(
      this,
    );
  }
}

abstract class _PatchBaseData implements PatchBaseData {
  const factory _PatchBaseData({final BaseData? baseData}) =
      _$PatchBaseDataImpl;

  factory _PatchBaseData.fromJson(Map<String, dynamic> json) =
      _$PatchBaseDataImpl.fromJson;

  @override
  BaseData? get baseData;

  /// Create a copy of PatchBaseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PatchBaseDataImplCopyWith<_$PatchBaseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BaseData _$BaseDataFromJson(Map<String, dynamic> json) {
  return _BaseData.fromJson(json);
}

/// @nodoc
mixin _$BaseData {
  String? get programType => throw _privateConstructorUsedError;
  bool? get doeJob => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;

  /// Serializes this BaseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseDataCopyWith<BaseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseDataCopyWith<$Res> {
  factory $BaseDataCopyWith(BaseData value, $Res Function(BaseData) then) =
      _$BaseDataCopyWithImpl<$Res, BaseData>;
  @useResult
  $Res call(
      {String? programType,
      bool? doeJob,
      String? address,
      String? city,
      String? date});
}

/// @nodoc
class _$BaseDataCopyWithImpl<$Res, $Val extends BaseData>
    implements $BaseDataCopyWith<$Res> {
  _$BaseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programType = freezed,
    Object? doeJob = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      programType: freezed == programType
          ? _value.programType
          : programType // ignore: cast_nullable_to_non_nullable
              as String?,
      doeJob: freezed == doeJob
          ? _value.doeJob
          : doeJob // ignore: cast_nullable_to_non_nullable
              as bool?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseDataImplCopyWith<$Res>
    implements $BaseDataCopyWith<$Res> {
  factory _$$BaseDataImplCopyWith(
          _$BaseDataImpl value, $Res Function(_$BaseDataImpl) then) =
      __$$BaseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? programType,
      bool? doeJob,
      String? address,
      String? city,
      String? date});
}

/// @nodoc
class __$$BaseDataImplCopyWithImpl<$Res>
    extends _$BaseDataCopyWithImpl<$Res, _$BaseDataImpl>
    implements _$$BaseDataImplCopyWith<$Res> {
  __$$BaseDataImplCopyWithImpl(
      _$BaseDataImpl _value, $Res Function(_$BaseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programType = freezed,
    Object? doeJob = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? date = freezed,
  }) {
    return _then(_$BaseDataImpl(
      programType: freezed == programType
          ? _value.programType
          : programType // ignore: cast_nullable_to_non_nullable
              as String?,
      doeJob: freezed == doeJob
          ? _value.doeJob
          : doeJob // ignore: cast_nullable_to_non_nullable
              as bool?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseDataImpl implements _BaseData {
  const _$BaseDataImpl(
      {this.programType, this.doeJob, this.address, this.city, this.date});

  factory _$BaseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseDataImplFromJson(json);

  @override
  final String? programType;
  @override
  final bool? doeJob;
  @override
  final String? address;
  @override
  final String? city;
  @override
  final String? date;

  @override
  String toString() {
    return 'BaseData(programType: $programType, doeJob: $doeJob, address: $address, city: $city, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseDataImpl &&
            (identical(other.programType, programType) ||
                other.programType == programType) &&
            (identical(other.doeJob, doeJob) || other.doeJob == doeJob) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, programType, doeJob, address, city, date);

  /// Create a copy of BaseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseDataImplCopyWith<_$BaseDataImpl> get copyWith =>
      __$$BaseDataImplCopyWithImpl<_$BaseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseDataImplToJson(
      this,
    );
  }
}

abstract class _BaseData implements BaseData {
  const factory _BaseData(
      {final String? programType,
      final bool? doeJob,
      final String? address,
      final String? city,
      final String? date}) = _$BaseDataImpl;

  factory _BaseData.fromJson(Map<String, dynamic> json) =
      _$BaseDataImpl.fromJson;

  @override
  String? get programType;
  @override
  bool? get doeJob;
  @override
  String? get address;
  @override
  String? get city;
  @override
  String? get date;

  /// Create a copy of BaseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseDataImplCopyWith<_$BaseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
