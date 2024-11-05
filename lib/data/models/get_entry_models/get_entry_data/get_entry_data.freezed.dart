// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_entry_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String? get id => throw _privateConstructorUsedError;
  String? get programType => throw _privateConstructorUsedError;
  bool? get doeJob => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  Coordinates? get coordinates => throw _privateConstructorUsedError;
  String? get createdBy => throw _privateConstructorUsedError;
  String? get jobId => throw _privateConstructorUsedError;
  int? get progressStep => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  InitialWalkthrough? get initialWalkthrough =>
      throw _privateConstructorUsedError;
  AirSealing? get airSealing => throw _privateConstructorUsedError;
  AtticInsulation? get atticInsulation => throw _privateConstructorUsedError;
  WallInsulation? get wallInsulation => throw _privateConstructorUsedError;
  FinalWalkthrough? get finalWalkthrough => throw _privateConstructorUsedError;

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {String? id,
      String? programType,
      bool? doeJob,
      String? address,
      String? city,
      Coordinates? coordinates,
      String? createdBy,
      String? jobId,
      int? progressStep,
      String? date,
      InitialWalkthrough? initialWalkthrough,
      AirSealing? airSealing,
      AtticInsulation? atticInsulation,
      WallInsulation? wallInsulation,
      FinalWalkthrough? finalWalkthrough});

  $CoordinatesCopyWith<$Res>? get coordinates;
  $InitialWalkthroughCopyWith<$Res>? get initialWalkthrough;
  $AirSealingCopyWith<$Res>? get airSealing;
  $AtticInsulationCopyWith<$Res>? get atticInsulation;
  $WallInsulationCopyWith<$Res>? get wallInsulation;
  $FinalWalkthroughCopyWith<$Res>? get finalWalkthrough;
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? programType = freezed,
    Object? doeJob = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? coordinates = freezed,
    Object? createdBy = freezed,
    Object? jobId = freezed,
    Object? progressStep = freezed,
    Object? date = freezed,
    Object? initialWalkthrough = freezed,
    Object? airSealing = freezed,
    Object? atticInsulation = freezed,
    Object? wallInsulation = freezed,
    Object? finalWalkthrough = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinates?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      jobId: freezed == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String?,
      progressStep: freezed == progressStep
          ? _value.progressStep
          : progressStep // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      initialWalkthrough: freezed == initialWalkthrough
          ? _value.initialWalkthrough
          : initialWalkthrough // ignore: cast_nullable_to_non_nullable
              as InitialWalkthrough?,
      airSealing: freezed == airSealing
          ? _value.airSealing
          : airSealing // ignore: cast_nullable_to_non_nullable
              as AirSealing?,
      atticInsulation: freezed == atticInsulation
          ? _value.atticInsulation
          : atticInsulation // ignore: cast_nullable_to_non_nullable
              as AtticInsulation?,
      wallInsulation: freezed == wallInsulation
          ? _value.wallInsulation
          : wallInsulation // ignore: cast_nullable_to_non_nullable
              as WallInsulation?,
      finalWalkthrough: freezed == finalWalkthrough
          ? _value.finalWalkthrough
          : finalWalkthrough // ignore: cast_nullable_to_non_nullable
              as FinalWalkthrough?,
    ) as $Val);
  }

  /// Create a copy of Data
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

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InitialWalkthroughCopyWith<$Res>? get initialWalkthrough {
    if (_value.initialWalkthrough == null) {
      return null;
    }

    return $InitialWalkthroughCopyWith<$Res>(_value.initialWalkthrough!,
        (value) {
      return _then(_value.copyWith(initialWalkthrough: value) as $Val);
    });
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AirSealingCopyWith<$Res>? get airSealing {
    if (_value.airSealing == null) {
      return null;
    }

    return $AirSealingCopyWith<$Res>(_value.airSealing!, (value) {
      return _then(_value.copyWith(airSealing: value) as $Val);
    });
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AtticInsulationCopyWith<$Res>? get atticInsulation {
    if (_value.atticInsulation == null) {
      return null;
    }

    return $AtticInsulationCopyWith<$Res>(_value.atticInsulation!, (value) {
      return _then(_value.copyWith(atticInsulation: value) as $Val);
    });
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WallInsulationCopyWith<$Res>? get wallInsulation {
    if (_value.wallInsulation == null) {
      return null;
    }

    return $WallInsulationCopyWith<$Res>(_value.wallInsulation!, (value) {
      return _then(_value.copyWith(wallInsulation: value) as $Val);
    });
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FinalWalkthroughCopyWith<$Res>? get finalWalkthrough {
    if (_value.finalWalkthrough == null) {
      return null;
    }

    return $FinalWalkthroughCopyWith<$Res>(_value.finalWalkthrough!, (value) {
      return _then(_value.copyWith(finalWalkthrough: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? programType,
      bool? doeJob,
      String? address,
      String? city,
      Coordinates? coordinates,
      String? createdBy,
      String? jobId,
      int? progressStep,
      String? date,
      InitialWalkthrough? initialWalkthrough,
      AirSealing? airSealing,
      AtticInsulation? atticInsulation,
      WallInsulation? wallInsulation,
      FinalWalkthrough? finalWalkthrough});

  @override
  $CoordinatesCopyWith<$Res>? get coordinates;
  @override
  $InitialWalkthroughCopyWith<$Res>? get initialWalkthrough;
  @override
  $AirSealingCopyWith<$Res>? get airSealing;
  @override
  $AtticInsulationCopyWith<$Res>? get atticInsulation;
  @override
  $WallInsulationCopyWith<$Res>? get wallInsulation;
  @override
  $FinalWalkthroughCopyWith<$Res>? get finalWalkthrough;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? programType = freezed,
    Object? doeJob = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? coordinates = freezed,
    Object? createdBy = freezed,
    Object? jobId = freezed,
    Object? progressStep = freezed,
    Object? date = freezed,
    Object? initialWalkthrough = freezed,
    Object? airSealing = freezed,
    Object? atticInsulation = freezed,
    Object? wallInsulation = freezed,
    Object? finalWalkthrough = freezed,
  }) {
    return _then(_$DataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinates?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      jobId: freezed == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String?,
      progressStep: freezed == progressStep
          ? _value.progressStep
          : progressStep // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      initialWalkthrough: freezed == initialWalkthrough
          ? _value.initialWalkthrough
          : initialWalkthrough // ignore: cast_nullable_to_non_nullable
              as InitialWalkthrough?,
      airSealing: freezed == airSealing
          ? _value.airSealing
          : airSealing // ignore: cast_nullable_to_non_nullable
              as AirSealing?,
      atticInsulation: freezed == atticInsulation
          ? _value.atticInsulation
          : atticInsulation // ignore: cast_nullable_to_non_nullable
              as AtticInsulation?,
      wallInsulation: freezed == wallInsulation
          ? _value.wallInsulation
          : wallInsulation // ignore: cast_nullable_to_non_nullable
              as WallInsulation?,
      finalWalkthrough: freezed == finalWalkthrough
          ? _value.finalWalkthrough
          : finalWalkthrough // ignore: cast_nullable_to_non_nullable
              as FinalWalkthrough?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {this.id,
      this.programType,
      this.doeJob,
      this.address,
      this.city,
      this.coordinates,
      this.createdBy,
      this.jobId,
      this.progressStep,
      this.date,
      this.initialWalkthrough,
      this.airSealing,
      this.atticInsulation,
      this.wallInsulation,
      this.finalWalkthrough});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final String? id;
  @override
  final String? programType;
  @override
  final bool? doeJob;
  @override
  final String? address;
  @override
  final String? city;
  @override
  final Coordinates? coordinates;
  @override
  final String? createdBy;
  @override
  final String? jobId;
  @override
  final int? progressStep;
  @override
  final String? date;
  @override
  final InitialWalkthrough? initialWalkthrough;
  @override
  final AirSealing? airSealing;
  @override
  final AtticInsulation? atticInsulation;
  @override
  final WallInsulation? wallInsulation;
  @override
  final FinalWalkthrough? finalWalkthrough;

  @override
  String toString() {
    return 'Data(id: $id, programType: $programType, doeJob: $doeJob, address: $address, city: $city, coordinates: $coordinates, createdBy: $createdBy, jobId: $jobId, progressStep: $progressStep, date: $date, initialWalkthrough: $initialWalkthrough, airSealing: $airSealing, atticInsulation: $atticInsulation, wallInsulation: $wallInsulation, finalWalkthrough: $finalWalkthrough)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.programType, programType) ||
                other.programType == programType) &&
            (identical(other.doeJob, doeJob) || other.doeJob == doeJob) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.jobId, jobId) || other.jobId == jobId) &&
            (identical(other.progressStep, progressStep) ||
                other.progressStep == progressStep) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.initialWalkthrough, initialWalkthrough) ||
                other.initialWalkthrough == initialWalkthrough) &&
            (identical(other.airSealing, airSealing) ||
                other.airSealing == airSealing) &&
            (identical(other.atticInsulation, atticInsulation) ||
                other.atticInsulation == atticInsulation) &&
            (identical(other.wallInsulation, wallInsulation) ||
                other.wallInsulation == wallInsulation) &&
            (identical(other.finalWalkthrough, finalWalkthrough) ||
                other.finalWalkthrough == finalWalkthrough));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      programType,
      doeJob,
      address,
      city,
      coordinates,
      createdBy,
      jobId,
      progressStep,
      date,
      initialWalkthrough,
      airSealing,
      atticInsulation,
      wallInsulation,
      finalWalkthrough);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {final String? id,
      final String? programType,
      final bool? doeJob,
      final String? address,
      final String? city,
      final Coordinates? coordinates,
      final String? createdBy,
      final String? jobId,
      final int? progressStep,
      final String? date,
      final InitialWalkthrough? initialWalkthrough,
      final AirSealing? airSealing,
      final AtticInsulation? atticInsulation,
      final WallInsulation? wallInsulation,
      final FinalWalkthrough? finalWalkthrough}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  String? get id;
  @override
  String? get programType;
  @override
  bool? get doeJob;
  @override
  String? get address;
  @override
  String? get city;
  @override
  Coordinates? get coordinates;
  @override
  String? get createdBy;
  @override
  String? get jobId;
  @override
  int? get progressStep;
  @override
  String? get date;
  @override
  InitialWalkthrough? get initialWalkthrough;
  @override
  AirSealing? get airSealing;
  @override
  AtticInsulation? get atticInsulation;
  @override
  WallInsulation? get wallInsulation;
  @override
  FinalWalkthrough? get finalWalkthrough;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
