// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_entries_request_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostEntriesRequestData _$PostEntriesRequestDataFromJson(
    Map<String, dynamic> json) {
  return _PostEntriesRequestData.fromJson(json);
}

/// @nodoc
mixin _$PostEntriesRequestData {
  ProgramType? get programType => throw _privateConstructorUsedError;
  bool? get doeJob => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  Coordinates? get coordinates =>
      throw _privateConstructorUsedError; // Assuming Coordinates is another Freezed model
  String? get jobId => throw _privateConstructorUsedError;

  /// Serializes this PostEntriesRequestData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostEntriesRequestData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostEntriesRequestDataCopyWith<PostEntriesRequestData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostEntriesRequestDataCopyWith<$Res> {
  factory $PostEntriesRequestDataCopyWith(PostEntriesRequestData value,
          $Res Function(PostEntriesRequestData) then) =
      _$PostEntriesRequestDataCopyWithImpl<$Res, PostEntriesRequestData>;
  @useResult
  $Res call(
      {ProgramType? programType,
      bool? doeJob,
      String? date,
      String? address,
      String? city,
      Coordinates? coordinates,
      String? jobId});

  $CoordinatesCopyWith<$Res>? get coordinates;
}

/// @nodoc
class _$PostEntriesRequestDataCopyWithImpl<$Res,
        $Val extends PostEntriesRequestData>
    implements $PostEntriesRequestDataCopyWith<$Res> {
  _$PostEntriesRequestDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostEntriesRequestData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programType = freezed,
    Object? doeJob = freezed,
    Object? date = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? coordinates = freezed,
    Object? jobId = freezed,
  }) {
    return _then(_value.copyWith(
      programType: freezed == programType
          ? _value.programType
          : programType // ignore: cast_nullable_to_non_nullable
              as ProgramType?,
      doeJob: freezed == doeJob
          ? _value.doeJob
          : doeJob // ignore: cast_nullable_to_non_nullable
              as bool?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinates?,
      jobId: freezed == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of PostEntriesRequestData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordinatesCopyWith<$Res>? get coordinates {
    if (_value.coordinates == null) {
      return null;
    }

    return $CoordinatesCopyWith<$Res>(_value.coordinates!, (value) {
      return _then(_value.copyWith(coordinates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostEntriesRequestDataImplCopyWith<$Res>
    implements $PostEntriesRequestDataCopyWith<$Res> {
  factory _$$PostEntriesRequestDataImplCopyWith(
          _$PostEntriesRequestDataImpl value,
          $Res Function(_$PostEntriesRequestDataImpl) then) =
      __$$PostEntriesRequestDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProgramType? programType,
      bool? doeJob,
      String? date,
      String? address,
      String? city,
      Coordinates? coordinates,
      String? jobId});

  @override
  $CoordinatesCopyWith<$Res>? get coordinates;
}

/// @nodoc
class __$$PostEntriesRequestDataImplCopyWithImpl<$Res>
    extends _$PostEntriesRequestDataCopyWithImpl<$Res,
        _$PostEntriesRequestDataImpl>
    implements _$$PostEntriesRequestDataImplCopyWith<$Res> {
  __$$PostEntriesRequestDataImplCopyWithImpl(
      _$PostEntriesRequestDataImpl _value,
      $Res Function(_$PostEntriesRequestDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostEntriesRequestData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programType = freezed,
    Object? doeJob = freezed,
    Object? date = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? coordinates = freezed,
    Object? jobId = freezed,
  }) {
    return _then(_$PostEntriesRequestDataImpl(
      programType: freezed == programType
          ? _value.programType
          : programType // ignore: cast_nullable_to_non_nullable
              as ProgramType?,
      doeJob: freezed == doeJob
          ? _value.doeJob
          : doeJob // ignore: cast_nullable_to_non_nullable
              as bool?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinates?,
      jobId: freezed == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostEntriesRequestDataImpl implements _PostEntriesRequestData {
  const _$PostEntriesRequestDataImpl(
      {this.programType,
      this.doeJob,
      this.date,
      this.address,
      this.city,
      this.coordinates,
      this.jobId});

  factory _$PostEntriesRequestDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostEntriesRequestDataImplFromJson(json);

  @override
  final ProgramType? programType;
  @override
  final bool? doeJob;
  @override
  final String? date;
  @override
  final String? address;
  @override
  final String? city;
  @override
  final Coordinates? coordinates;
// Assuming Coordinates is another Freezed model
  @override
  final String? jobId;

  @override
  String toString() {
    return 'PostEntriesRequestData(programType: $programType, doeJob: $doeJob, date: $date, address: $address, city: $city, coordinates: $coordinates, jobId: $jobId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostEntriesRequestDataImpl &&
            (identical(other.programType, programType) ||
                other.programType == programType) &&
            (identical(other.doeJob, doeJob) || other.doeJob == doeJob) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates) &&
            (identical(other.jobId, jobId) || other.jobId == jobId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, programType, doeJob, date,
      address, city, coordinates, jobId);

  /// Create a copy of PostEntriesRequestData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostEntriesRequestDataImplCopyWith<_$PostEntriesRequestDataImpl>
      get copyWith => __$$PostEntriesRequestDataImplCopyWithImpl<
          _$PostEntriesRequestDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostEntriesRequestDataImplToJson(
      this,
    );
  }
}

abstract class _PostEntriesRequestData implements PostEntriesRequestData {
  const factory _PostEntriesRequestData(
      {final ProgramType? programType,
      final bool? doeJob,
      final String? date,
      final String? address,
      final String? city,
      final Coordinates? coordinates,
      final String? jobId}) = _$PostEntriesRequestDataImpl;

  factory _PostEntriesRequestData.fromJson(Map<String, dynamic> json) =
      _$PostEntriesRequestDataImpl.fromJson;

  @override
  ProgramType? get programType;
  @override
  bool? get doeJob;
  @override
  String? get date;
  @override
  String? get address;
  @override
  String? get city;
  @override
  Coordinates? get coordinates; // Assuming Coordinates is another Freezed model
  @override
  String? get jobId;

  /// Create a copy of PostEntriesRequestData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostEntriesRequestDataImplCopyWith<_$PostEntriesRequestDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
