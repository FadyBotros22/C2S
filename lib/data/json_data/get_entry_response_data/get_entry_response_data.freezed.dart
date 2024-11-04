// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_entry_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetEntryResponseData _$GetEntryResponseDataFromJson(Map<String, dynamic> json) {
  return _GetEntryResponseData.fromJson(json);
}

/// @nodoc
mixin _$GetEntryResponseData {
  Meta? get meta => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  /// Serializes this GetEntryResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetEntryResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetEntryResponseDataCopyWith<GetEntryResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetEntryResponseDataCopyWith<$Res> {
  factory $GetEntryResponseDataCopyWith(GetEntryResponseData value,
          $Res Function(GetEntryResponseData) then) =
      _$GetEntryResponseDataCopyWithImpl<$Res, GetEntryResponseData>;
  @useResult
  $Res call({Meta? meta, Data? data});

  $MetaCopyWith<$Res>? get meta;
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetEntryResponseDataCopyWithImpl<$Res,
        $Val extends GetEntryResponseData>
    implements $GetEntryResponseDataCopyWith<$Res> {
  _$GetEntryResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetEntryResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ) as $Val);
  }

  /// Create a copy of GetEntryResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }

  /// Create a copy of GetEntryResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetEntryResponseDataImplCopyWith<$Res>
    implements $GetEntryResponseDataCopyWith<$Res> {
  factory _$$GetEntryResponseDataImplCopyWith(_$GetEntryResponseDataImpl value,
          $Res Function(_$GetEntryResponseDataImpl) then) =
      __$$GetEntryResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Meta? meta, Data? data});

  @override
  $MetaCopyWith<$Res>? get meta;
  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetEntryResponseDataImplCopyWithImpl<$Res>
    extends _$GetEntryResponseDataCopyWithImpl<$Res, _$GetEntryResponseDataImpl>
    implements _$$GetEntryResponseDataImplCopyWith<$Res> {
  __$$GetEntryResponseDataImplCopyWithImpl(_$GetEntryResponseDataImpl _value,
      $Res Function(_$GetEntryResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetEntryResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetEntryResponseDataImpl(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetEntryResponseDataImpl implements _GetEntryResponseData {
  const _$GetEntryResponseDataImpl({this.meta, this.data});

  factory _$GetEntryResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetEntryResponseDataImplFromJson(json);

  @override
  final Meta? meta;
  @override
  final Data? data;

  @override
  String toString() {
    return 'GetEntryResponseData(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEntryResponseDataImpl &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, meta, data);

  /// Create a copy of GetEntryResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEntryResponseDataImplCopyWith<_$GetEntryResponseDataImpl>
      get copyWith =>
          __$$GetEntryResponseDataImplCopyWithImpl<_$GetEntryResponseDataImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetEntryResponseDataImplToJson(
      this,
    );
  }
}

abstract class _GetEntryResponseData implements GetEntryResponseData {
  const factory _GetEntryResponseData({final Meta? meta, final Data? data}) =
      _$GetEntryResponseDataImpl;

  factory _GetEntryResponseData.fromJson(Map<String, dynamic> json) =
      _$GetEntryResponseDataImpl.fromJson;

  @override
  Meta? get meta;
  @override
  Data? get data;

  /// Create a copy of GetEntryResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetEntryResponseDataImplCopyWith<_$GetEntryResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

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

AirSealing _$AirSealingFromJson(Map<String, dynamic> json) {
  return _AirSealing.fromJson(json);
}

/// @nodoc
mixin _$AirSealing {
  bool? get onWorkOrder => throw _privateConstructorUsedError;
  AirSealingChecklist? get checklist => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  List<String>? get sealingQualityPic => throw _privateConstructorUsedError;

  /// Serializes this AirSealing to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AirSealing
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AirSealingCopyWith<AirSealing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirSealingCopyWith<$Res> {
  factory $AirSealingCopyWith(
          AirSealing value, $Res Function(AirSealing) then) =
      _$AirSealingCopyWithImpl<$Res, AirSealing>;
  @useResult
  $Res call(
      {bool? onWorkOrder,
      AirSealingChecklist? checklist,
      String? notes,
      List<String>? sealingQualityPic});

  $AirSealingChecklistCopyWith<$Res>? get checklist;
}

/// @nodoc
class _$AirSealingCopyWithImpl<$Res, $Val extends AirSealing>
    implements $AirSealingCopyWith<$Res> {
  _$AirSealingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AirSealing
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onWorkOrder = freezed,
    Object? checklist = freezed,
    Object? notes = freezed,
    Object? sealingQualityPic = freezed,
  }) {
    return _then(_value.copyWith(
      onWorkOrder: freezed == onWorkOrder
          ? _value.onWorkOrder
          : onWorkOrder // ignore: cast_nullable_to_non_nullable
              as bool?,
      checklist: freezed == checklist
          ? _value.checklist
          : checklist // ignore: cast_nullable_to_non_nullable
              as AirSealingChecklist?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      sealingQualityPic: freezed == sealingQualityPic
          ? _value.sealingQualityPic
          : sealingQualityPic // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  /// Create a copy of AirSealing
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AirSealingChecklistCopyWith<$Res>? get checklist {
    if (_value.checklist == null) {
      return null;
    }

    return $AirSealingChecklistCopyWith<$Res>(_value.checklist!, (value) {
      return _then(_value.copyWith(checklist: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AirSealingImplCopyWith<$Res>
    implements $AirSealingCopyWith<$Res> {
  factory _$$AirSealingImplCopyWith(
          _$AirSealingImpl value, $Res Function(_$AirSealingImpl) then) =
      __$$AirSealingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? onWorkOrder,
      AirSealingChecklist? checklist,
      String? notes,
      List<String>? sealingQualityPic});

  @override
  $AirSealingChecklistCopyWith<$Res>? get checklist;
}

/// @nodoc
class __$$AirSealingImplCopyWithImpl<$Res>
    extends _$AirSealingCopyWithImpl<$Res, _$AirSealingImpl>
    implements _$$AirSealingImplCopyWith<$Res> {
  __$$AirSealingImplCopyWithImpl(
      _$AirSealingImpl _value, $Res Function(_$AirSealingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AirSealing
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onWorkOrder = freezed,
    Object? checklist = freezed,
    Object? notes = freezed,
    Object? sealingQualityPic = freezed,
  }) {
    return _then(_$AirSealingImpl(
      onWorkOrder: freezed == onWorkOrder
          ? _value.onWorkOrder
          : onWorkOrder // ignore: cast_nullable_to_non_nullable
              as bool?,
      checklist: freezed == checklist
          ? _value.checklist
          : checklist // ignore: cast_nullable_to_non_nullable
              as AirSealingChecklist?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      sealingQualityPic: freezed == sealingQualityPic
          ? _value._sealingQualityPic
          : sealingQualityPic // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AirSealingImpl implements _AirSealing {
  const _$AirSealingImpl(
      {this.onWorkOrder,
      this.checklist,
      this.notes,
      final List<String>? sealingQualityPic})
      : _sealingQualityPic = sealingQualityPic;

  factory _$AirSealingImpl.fromJson(Map<String, dynamic> json) =>
      _$$AirSealingImplFromJson(json);

  @override
  final bool? onWorkOrder;
  @override
  final AirSealingChecklist? checklist;
  @override
  final String? notes;
  final List<String>? _sealingQualityPic;
  @override
  List<String>? get sealingQualityPic {
    final value = _sealingQualityPic;
    if (value == null) return null;
    if (_sealingQualityPic is EqualUnmodifiableListView)
      return _sealingQualityPic;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AirSealing(onWorkOrder: $onWorkOrder, checklist: $checklist, notes: $notes, sealingQualityPic: $sealingQualityPic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AirSealingImpl &&
            (identical(other.onWorkOrder, onWorkOrder) ||
                other.onWorkOrder == onWorkOrder) &&
            (identical(other.checklist, checklist) ||
                other.checklist == checklist) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other._sealingQualityPic, _sealingQualityPic));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, onWorkOrder, checklist, notes,
      const DeepCollectionEquality().hash(_sealingQualityPic));

  /// Create a copy of AirSealing
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AirSealingImplCopyWith<_$AirSealingImpl> get copyWith =>
      __$$AirSealingImplCopyWithImpl<_$AirSealingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AirSealingImplToJson(
      this,
    );
  }
}

abstract class _AirSealing implements AirSealing {
  const factory _AirSealing(
      {final bool? onWorkOrder,
      final AirSealingChecklist? checklist,
      final String? notes,
      final List<String>? sealingQualityPic}) = _$AirSealingImpl;

  factory _AirSealing.fromJson(Map<String, dynamic> json) =
      _$AirSealingImpl.fromJson;

  @override
  bool? get onWorkOrder;
  @override
  AirSealingChecklist? get checklist;
  @override
  String? get notes;
  @override
  List<String>? get sealingQualityPic;

  /// Create a copy of AirSealing
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AirSealingImplCopyWith<_$AirSealingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AirSealingChecklist _$AirSealingChecklistFromJson(Map<String, dynamic> json) {
  return _AirSealingChecklist.fromJson(json);
}

/// @nodoc
mixin _$AirSealingChecklist {
  String? get mainTopPlateSealed => throw _privateConstructorUsedError;
  String? get wetWallSealed => throw _privateConstructorUsedError;
  String? get chimneySealed => throw _privateConstructorUsedError;
  String? get exteriorPlatesSealed => throw _privateConstructorUsedError;
  String? get bhatroomFansSealed => throw _privateConstructorUsedError;
  String? get gableEndsSealed => throw _privateConstructorUsedError;
  String? get atticAccessSealed => throw _privateConstructorUsedError;
  String? get basementSealed => throw _privateConstructorUsedError;

  /// Serializes this AirSealingChecklist to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AirSealingChecklist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AirSealingChecklistCopyWith<AirSealingChecklist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirSealingChecklistCopyWith<$Res> {
  factory $AirSealingChecklistCopyWith(
          AirSealingChecklist value, $Res Function(AirSealingChecklist) then) =
      _$AirSealingChecklistCopyWithImpl<$Res, AirSealingChecklist>;
  @useResult
  $Res call(
      {String? mainTopPlateSealed,
      String? wetWallSealed,
      String? chimneySealed,
      String? exteriorPlatesSealed,
      String? bhatroomFansSealed,
      String? gableEndsSealed,
      String? atticAccessSealed,
      String? basementSealed});
}

/// @nodoc
class _$AirSealingChecklistCopyWithImpl<$Res, $Val extends AirSealingChecklist>
    implements $AirSealingChecklistCopyWith<$Res> {
  _$AirSealingChecklistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AirSealingChecklist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainTopPlateSealed = freezed,
    Object? wetWallSealed = freezed,
    Object? chimneySealed = freezed,
    Object? exteriorPlatesSealed = freezed,
    Object? bhatroomFansSealed = freezed,
    Object? gableEndsSealed = freezed,
    Object? atticAccessSealed = freezed,
    Object? basementSealed = freezed,
  }) {
    return _then(_value.copyWith(
      mainTopPlateSealed: freezed == mainTopPlateSealed
          ? _value.mainTopPlateSealed
          : mainTopPlateSealed // ignore: cast_nullable_to_non_nullable
              as String?,
      wetWallSealed: freezed == wetWallSealed
          ? _value.wetWallSealed
          : wetWallSealed // ignore: cast_nullable_to_non_nullable
              as String?,
      chimneySealed: freezed == chimneySealed
          ? _value.chimneySealed
          : chimneySealed // ignore: cast_nullable_to_non_nullable
              as String?,
      exteriorPlatesSealed: freezed == exteriorPlatesSealed
          ? _value.exteriorPlatesSealed
          : exteriorPlatesSealed // ignore: cast_nullable_to_non_nullable
              as String?,
      bhatroomFansSealed: freezed == bhatroomFansSealed
          ? _value.bhatroomFansSealed
          : bhatroomFansSealed // ignore: cast_nullable_to_non_nullable
              as String?,
      gableEndsSealed: freezed == gableEndsSealed
          ? _value.gableEndsSealed
          : gableEndsSealed // ignore: cast_nullable_to_non_nullable
              as String?,
      atticAccessSealed: freezed == atticAccessSealed
          ? _value.atticAccessSealed
          : atticAccessSealed // ignore: cast_nullable_to_non_nullable
              as String?,
      basementSealed: freezed == basementSealed
          ? _value.basementSealed
          : basementSealed // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AirSealingChecklistImplCopyWith<$Res>
    implements $AirSealingChecklistCopyWith<$Res> {
  factory _$$AirSealingChecklistImplCopyWith(_$AirSealingChecklistImpl value,
          $Res Function(_$AirSealingChecklistImpl) then) =
      __$$AirSealingChecklistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? mainTopPlateSealed,
      String? wetWallSealed,
      String? chimneySealed,
      String? exteriorPlatesSealed,
      String? bhatroomFansSealed,
      String? gableEndsSealed,
      String? atticAccessSealed,
      String? basementSealed});
}

/// @nodoc
class __$$AirSealingChecklistImplCopyWithImpl<$Res>
    extends _$AirSealingChecklistCopyWithImpl<$Res, _$AirSealingChecklistImpl>
    implements _$$AirSealingChecklistImplCopyWith<$Res> {
  __$$AirSealingChecklistImplCopyWithImpl(_$AirSealingChecklistImpl _value,
      $Res Function(_$AirSealingChecklistImpl) _then)
      : super(_value, _then);

  /// Create a copy of AirSealingChecklist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainTopPlateSealed = freezed,
    Object? wetWallSealed = freezed,
    Object? chimneySealed = freezed,
    Object? exteriorPlatesSealed = freezed,
    Object? bhatroomFansSealed = freezed,
    Object? gableEndsSealed = freezed,
    Object? atticAccessSealed = freezed,
    Object? basementSealed = freezed,
  }) {
    return _then(_$AirSealingChecklistImpl(
      mainTopPlateSealed: freezed == mainTopPlateSealed
          ? _value.mainTopPlateSealed
          : mainTopPlateSealed // ignore: cast_nullable_to_non_nullable
              as String?,
      wetWallSealed: freezed == wetWallSealed
          ? _value.wetWallSealed
          : wetWallSealed // ignore: cast_nullable_to_non_nullable
              as String?,
      chimneySealed: freezed == chimneySealed
          ? _value.chimneySealed
          : chimneySealed // ignore: cast_nullable_to_non_nullable
              as String?,
      exteriorPlatesSealed: freezed == exteriorPlatesSealed
          ? _value.exteriorPlatesSealed
          : exteriorPlatesSealed // ignore: cast_nullable_to_non_nullable
              as String?,
      bhatroomFansSealed: freezed == bhatroomFansSealed
          ? _value.bhatroomFansSealed
          : bhatroomFansSealed // ignore: cast_nullable_to_non_nullable
              as String?,
      gableEndsSealed: freezed == gableEndsSealed
          ? _value.gableEndsSealed
          : gableEndsSealed // ignore: cast_nullable_to_non_nullable
              as String?,
      atticAccessSealed: freezed == atticAccessSealed
          ? _value.atticAccessSealed
          : atticAccessSealed // ignore: cast_nullable_to_non_nullable
              as String?,
      basementSealed: freezed == basementSealed
          ? _value.basementSealed
          : basementSealed // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AirSealingChecklistImpl implements _AirSealingChecklist {
  const _$AirSealingChecklistImpl(
      {this.mainTopPlateSealed,
      this.wetWallSealed,
      this.chimneySealed,
      this.exteriorPlatesSealed,
      this.bhatroomFansSealed,
      this.gableEndsSealed,
      this.atticAccessSealed,
      this.basementSealed});

  factory _$AirSealingChecklistImpl.fromJson(Map<String, dynamic> json) =>
      _$$AirSealingChecklistImplFromJson(json);

  @override
  final String? mainTopPlateSealed;
  @override
  final String? wetWallSealed;
  @override
  final String? chimneySealed;
  @override
  final String? exteriorPlatesSealed;
  @override
  final String? bhatroomFansSealed;
  @override
  final String? gableEndsSealed;
  @override
  final String? atticAccessSealed;
  @override
  final String? basementSealed;

  @override
  String toString() {
    return 'AirSealingChecklist(mainTopPlateSealed: $mainTopPlateSealed, wetWallSealed: $wetWallSealed, chimneySealed: $chimneySealed, exteriorPlatesSealed: $exteriorPlatesSealed, bhatroomFansSealed: $bhatroomFansSealed, gableEndsSealed: $gableEndsSealed, atticAccessSealed: $atticAccessSealed, basementSealed: $basementSealed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AirSealingChecklistImpl &&
            (identical(other.mainTopPlateSealed, mainTopPlateSealed) ||
                other.mainTopPlateSealed == mainTopPlateSealed) &&
            (identical(other.wetWallSealed, wetWallSealed) ||
                other.wetWallSealed == wetWallSealed) &&
            (identical(other.chimneySealed, chimneySealed) ||
                other.chimneySealed == chimneySealed) &&
            (identical(other.exteriorPlatesSealed, exteriorPlatesSealed) ||
                other.exteriorPlatesSealed == exteriorPlatesSealed) &&
            (identical(other.bhatroomFansSealed, bhatroomFansSealed) ||
                other.bhatroomFansSealed == bhatroomFansSealed) &&
            (identical(other.gableEndsSealed, gableEndsSealed) ||
                other.gableEndsSealed == gableEndsSealed) &&
            (identical(other.atticAccessSealed, atticAccessSealed) ||
                other.atticAccessSealed == atticAccessSealed) &&
            (identical(other.basementSealed, basementSealed) ||
                other.basementSealed == basementSealed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      mainTopPlateSealed,
      wetWallSealed,
      chimneySealed,
      exteriorPlatesSealed,
      bhatroomFansSealed,
      gableEndsSealed,
      atticAccessSealed,
      basementSealed);

  /// Create a copy of AirSealingChecklist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AirSealingChecklistImplCopyWith<_$AirSealingChecklistImpl> get copyWith =>
      __$$AirSealingChecklistImplCopyWithImpl<_$AirSealingChecklistImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AirSealingChecklistImplToJson(
      this,
    );
  }
}

abstract class _AirSealingChecklist implements AirSealingChecklist {
  const factory _AirSealingChecklist(
      {final String? mainTopPlateSealed,
      final String? wetWallSealed,
      final String? chimneySealed,
      final String? exteriorPlatesSealed,
      final String? bhatroomFansSealed,
      final String? gableEndsSealed,
      final String? atticAccessSealed,
      final String? basementSealed}) = _$AirSealingChecklistImpl;

  factory _AirSealingChecklist.fromJson(Map<String, dynamic> json) =
      _$AirSealingChecklistImpl.fromJson;

  @override
  String? get mainTopPlateSealed;
  @override
  String? get wetWallSealed;
  @override
  String? get chimneySealed;
  @override
  String? get exteriorPlatesSealed;
  @override
  String? get bhatroomFansSealed;
  @override
  String? get gableEndsSealed;
  @override
  String? get atticAccessSealed;
  @override
  String? get basementSealed;

  /// Create a copy of AirSealingChecklist
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AirSealingChecklistImplCopyWith<_$AirSealingChecklistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AtticInsulation _$AtticInsulationFromJson(Map<String, dynamic> json) {
  return _AtticInsulation.fromJson(json);
}

/// @nodoc
mixin _$AtticInsulation {
  bool? get onWorkOrder => throw _privateConstructorUsedError;
  AtticInsulationChecklist? get checklist => throw _privateConstructorUsedError;
  String? get inaccurateMeasurementsNotes => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  List<String>? get atticInsulationPic => throw _privateConstructorUsedError;

  /// Serializes this AtticInsulation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AtticInsulation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AtticInsulationCopyWith<AtticInsulation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AtticInsulationCopyWith<$Res> {
  factory $AtticInsulationCopyWith(
          AtticInsulation value, $Res Function(AtticInsulation) then) =
      _$AtticInsulationCopyWithImpl<$Res, AtticInsulation>;
  @useResult
  $Res call(
      {bool? onWorkOrder,
      AtticInsulationChecklist? checklist,
      String? inaccurateMeasurementsNotes,
      String? notes,
      List<String>? atticInsulationPic});

  $AtticInsulationChecklistCopyWith<$Res>? get checklist;
}

/// @nodoc
class _$AtticInsulationCopyWithImpl<$Res, $Val extends AtticInsulation>
    implements $AtticInsulationCopyWith<$Res> {
  _$AtticInsulationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AtticInsulation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onWorkOrder = freezed,
    Object? checklist = freezed,
    Object? inaccurateMeasurementsNotes = freezed,
    Object? notes = freezed,
    Object? atticInsulationPic = freezed,
  }) {
    return _then(_value.copyWith(
      onWorkOrder: freezed == onWorkOrder
          ? _value.onWorkOrder
          : onWorkOrder // ignore: cast_nullable_to_non_nullable
              as bool?,
      checklist: freezed == checklist
          ? _value.checklist
          : checklist // ignore: cast_nullable_to_non_nullable
              as AtticInsulationChecklist?,
      inaccurateMeasurementsNotes: freezed == inaccurateMeasurementsNotes
          ? _value.inaccurateMeasurementsNotes
          : inaccurateMeasurementsNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      atticInsulationPic: freezed == atticInsulationPic
          ? _value.atticInsulationPic
          : atticInsulationPic // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  /// Create a copy of AtticInsulation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AtticInsulationChecklistCopyWith<$Res>? get checklist {
    if (_value.checklist == null) {
      return null;
    }

    return $AtticInsulationChecklistCopyWith<$Res>(_value.checklist!, (value) {
      return _then(_value.copyWith(checklist: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AtticInsulationImplCopyWith<$Res>
    implements $AtticInsulationCopyWith<$Res> {
  factory _$$AtticInsulationImplCopyWith(_$AtticInsulationImpl value,
          $Res Function(_$AtticInsulationImpl) then) =
      __$$AtticInsulationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? onWorkOrder,
      AtticInsulationChecklist? checklist,
      String? inaccurateMeasurementsNotes,
      String? notes,
      List<String>? atticInsulationPic});

  @override
  $AtticInsulationChecklistCopyWith<$Res>? get checklist;
}

/// @nodoc
class __$$AtticInsulationImplCopyWithImpl<$Res>
    extends _$AtticInsulationCopyWithImpl<$Res, _$AtticInsulationImpl>
    implements _$$AtticInsulationImplCopyWith<$Res> {
  __$$AtticInsulationImplCopyWithImpl(
      _$AtticInsulationImpl _value, $Res Function(_$AtticInsulationImpl) _then)
      : super(_value, _then);

  /// Create a copy of AtticInsulation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onWorkOrder = freezed,
    Object? checklist = freezed,
    Object? inaccurateMeasurementsNotes = freezed,
    Object? notes = freezed,
    Object? atticInsulationPic = freezed,
  }) {
    return _then(_$AtticInsulationImpl(
      onWorkOrder: freezed == onWorkOrder
          ? _value.onWorkOrder
          : onWorkOrder // ignore: cast_nullable_to_non_nullable
              as bool?,
      checklist: freezed == checklist
          ? _value.checklist
          : checklist // ignore: cast_nullable_to_non_nullable
              as AtticInsulationChecklist?,
      inaccurateMeasurementsNotes: freezed == inaccurateMeasurementsNotes
          ? _value.inaccurateMeasurementsNotes
          : inaccurateMeasurementsNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      atticInsulationPic: freezed == atticInsulationPic
          ? _value._atticInsulationPic
          : atticInsulationPic // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AtticInsulationImpl implements _AtticInsulation {
  const _$AtticInsulationImpl(
      {this.onWorkOrder,
      this.checklist,
      this.inaccurateMeasurementsNotes,
      this.notes,
      final List<String>? atticInsulationPic})
      : _atticInsulationPic = atticInsulationPic;

  factory _$AtticInsulationImpl.fromJson(Map<String, dynamic> json) =>
      _$$AtticInsulationImplFromJson(json);

  @override
  final bool? onWorkOrder;
  @override
  final AtticInsulationChecklist? checklist;
  @override
  final String? inaccurateMeasurementsNotes;
  @override
  final String? notes;
  final List<String>? _atticInsulationPic;
  @override
  List<String>? get atticInsulationPic {
    final value = _atticInsulationPic;
    if (value == null) return null;
    if (_atticInsulationPic is EqualUnmodifiableListView)
      return _atticInsulationPic;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AtticInsulation(onWorkOrder: $onWorkOrder, checklist: $checklist, inaccurateMeasurementsNotes: $inaccurateMeasurementsNotes, notes: $notes, atticInsulationPic: $atticInsulationPic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AtticInsulationImpl &&
            (identical(other.onWorkOrder, onWorkOrder) ||
                other.onWorkOrder == onWorkOrder) &&
            (identical(other.checklist, checklist) ||
                other.checklist == checklist) &&
            (identical(other.inaccurateMeasurementsNotes,
                    inaccurateMeasurementsNotes) ||
                other.inaccurateMeasurementsNotes ==
                    inaccurateMeasurementsNotes) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other._atticInsulationPic, _atticInsulationPic));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      onWorkOrder,
      checklist,
      inaccurateMeasurementsNotes,
      notes,
      const DeepCollectionEquality().hash(_atticInsulationPic));

  /// Create a copy of AtticInsulation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AtticInsulationImplCopyWith<_$AtticInsulationImpl> get copyWith =>
      __$$AtticInsulationImplCopyWithImpl<_$AtticInsulationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AtticInsulationImplToJson(
      this,
    );
  }
}

abstract class _AtticInsulation implements AtticInsulation {
  const factory _AtticInsulation(
      {final bool? onWorkOrder,
      final AtticInsulationChecklist? checklist,
      final String? inaccurateMeasurementsNotes,
      final String? notes,
      final List<String>? atticInsulationPic}) = _$AtticInsulationImpl;

  factory _AtticInsulation.fromJson(Map<String, dynamic> json) =
      _$AtticInsulationImpl.fromJson;

  @override
  bool? get onWorkOrder;
  @override
  AtticInsulationChecklist? get checklist;
  @override
  String? get inaccurateMeasurementsNotes;
  @override
  String? get notes;
  @override
  List<String>? get atticInsulationPic;

  /// Create a copy of AtticInsulation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AtticInsulationImplCopyWith<_$AtticInsulationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AtticInsulationChecklist _$AtticInsulationChecklistFromJson(
    Map<String, dynamic> json) {
  return _AtticInsulationChecklist.fromJson(json);
}

/// @nodoc
mixin _$AtticInsulationChecklist {
  String? get insulationMarkersInstalled => throw _privateConstructorUsedError;
  String? get lightsDammed => throw _privateConstructorUsedError;
  String? get bathroomFansVentedOut => throw _privateConstructorUsedError;
  String? get bathroomFansDammed => throw _privateConstructorUsedError;
  String? get measurementsAreAccurate => throw _privateConstructorUsedError;
  String? get venilationChecked => throw _privateConstructorUsedError;
  String? get chimneyDammed => throw _privateConstructorUsedError;

  /// Serializes this AtticInsulationChecklist to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AtticInsulationChecklist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AtticInsulationChecklistCopyWith<AtticInsulationChecklist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AtticInsulationChecklistCopyWith<$Res> {
  factory $AtticInsulationChecklistCopyWith(AtticInsulationChecklist value,
          $Res Function(AtticInsulationChecklist) then) =
      _$AtticInsulationChecklistCopyWithImpl<$Res, AtticInsulationChecklist>;
  @useResult
  $Res call(
      {String? insulationMarkersInstalled,
      String? lightsDammed,
      String? bathroomFansVentedOut,
      String? bathroomFansDammed,
      String? measurementsAreAccurate,
      String? venilationChecked,
      String? chimneyDammed});
}

/// @nodoc
class _$AtticInsulationChecklistCopyWithImpl<$Res,
        $Val extends AtticInsulationChecklist>
    implements $AtticInsulationChecklistCopyWith<$Res> {
  _$AtticInsulationChecklistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AtticInsulationChecklist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? insulationMarkersInstalled = freezed,
    Object? lightsDammed = freezed,
    Object? bathroomFansVentedOut = freezed,
    Object? bathroomFansDammed = freezed,
    Object? measurementsAreAccurate = freezed,
    Object? venilationChecked = freezed,
    Object? chimneyDammed = freezed,
  }) {
    return _then(_value.copyWith(
      insulationMarkersInstalled: freezed == insulationMarkersInstalled
          ? _value.insulationMarkersInstalled
          : insulationMarkersInstalled // ignore: cast_nullable_to_non_nullable
              as String?,
      lightsDammed: freezed == lightsDammed
          ? _value.lightsDammed
          : lightsDammed // ignore: cast_nullable_to_non_nullable
              as String?,
      bathroomFansVentedOut: freezed == bathroomFansVentedOut
          ? _value.bathroomFansVentedOut
          : bathroomFansVentedOut // ignore: cast_nullable_to_non_nullable
              as String?,
      bathroomFansDammed: freezed == bathroomFansDammed
          ? _value.bathroomFansDammed
          : bathroomFansDammed // ignore: cast_nullable_to_non_nullable
              as String?,
      measurementsAreAccurate: freezed == measurementsAreAccurate
          ? _value.measurementsAreAccurate
          : measurementsAreAccurate // ignore: cast_nullable_to_non_nullable
              as String?,
      venilationChecked: freezed == venilationChecked
          ? _value.venilationChecked
          : venilationChecked // ignore: cast_nullable_to_non_nullable
              as String?,
      chimneyDammed: freezed == chimneyDammed
          ? _value.chimneyDammed
          : chimneyDammed // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AtticInsulationChecklistImplCopyWith<$Res>
    implements $AtticInsulationChecklistCopyWith<$Res> {
  factory _$$AtticInsulationChecklistImplCopyWith(
          _$AtticInsulationChecklistImpl value,
          $Res Function(_$AtticInsulationChecklistImpl) then) =
      __$$AtticInsulationChecklistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? insulationMarkersInstalled,
      String? lightsDammed,
      String? bathroomFansVentedOut,
      String? bathroomFansDammed,
      String? measurementsAreAccurate,
      String? venilationChecked,
      String? chimneyDammed});
}

/// @nodoc
class __$$AtticInsulationChecklistImplCopyWithImpl<$Res>
    extends _$AtticInsulationChecklistCopyWithImpl<$Res,
        _$AtticInsulationChecklistImpl>
    implements _$$AtticInsulationChecklistImplCopyWith<$Res> {
  __$$AtticInsulationChecklistImplCopyWithImpl(
      _$AtticInsulationChecklistImpl _value,
      $Res Function(_$AtticInsulationChecklistImpl) _then)
      : super(_value, _then);

  /// Create a copy of AtticInsulationChecklist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? insulationMarkersInstalled = freezed,
    Object? lightsDammed = freezed,
    Object? bathroomFansVentedOut = freezed,
    Object? bathroomFansDammed = freezed,
    Object? measurementsAreAccurate = freezed,
    Object? venilationChecked = freezed,
    Object? chimneyDammed = freezed,
  }) {
    return _then(_$AtticInsulationChecklistImpl(
      insulationMarkersInstalled: freezed == insulationMarkersInstalled
          ? _value.insulationMarkersInstalled
          : insulationMarkersInstalled // ignore: cast_nullable_to_non_nullable
              as String?,
      lightsDammed: freezed == lightsDammed
          ? _value.lightsDammed
          : lightsDammed // ignore: cast_nullable_to_non_nullable
              as String?,
      bathroomFansVentedOut: freezed == bathroomFansVentedOut
          ? _value.bathroomFansVentedOut
          : bathroomFansVentedOut // ignore: cast_nullable_to_non_nullable
              as String?,
      bathroomFansDammed: freezed == bathroomFansDammed
          ? _value.bathroomFansDammed
          : bathroomFansDammed // ignore: cast_nullable_to_non_nullable
              as String?,
      measurementsAreAccurate: freezed == measurementsAreAccurate
          ? _value.measurementsAreAccurate
          : measurementsAreAccurate // ignore: cast_nullable_to_non_nullable
              as String?,
      venilationChecked: freezed == venilationChecked
          ? _value.venilationChecked
          : venilationChecked // ignore: cast_nullable_to_non_nullable
              as String?,
      chimneyDammed: freezed == chimneyDammed
          ? _value.chimneyDammed
          : chimneyDammed // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AtticInsulationChecklistImpl implements _AtticInsulationChecklist {
  const _$AtticInsulationChecklistImpl(
      {this.insulationMarkersInstalled,
      this.lightsDammed,
      this.bathroomFansVentedOut,
      this.bathroomFansDammed,
      this.measurementsAreAccurate,
      this.venilationChecked,
      this.chimneyDammed});

  factory _$AtticInsulationChecklistImpl.fromJson(Map<String, dynamic> json) =>
      _$$AtticInsulationChecklistImplFromJson(json);

  @override
  final String? insulationMarkersInstalled;
  @override
  final String? lightsDammed;
  @override
  final String? bathroomFansVentedOut;
  @override
  final String? bathroomFansDammed;
  @override
  final String? measurementsAreAccurate;
  @override
  final String? venilationChecked;
  @override
  final String? chimneyDammed;

  @override
  String toString() {
    return 'AtticInsulationChecklist(insulationMarkersInstalled: $insulationMarkersInstalled, lightsDammed: $lightsDammed, bathroomFansVentedOut: $bathroomFansVentedOut, bathroomFansDammed: $bathroomFansDammed, measurementsAreAccurate: $measurementsAreAccurate, venilationChecked: $venilationChecked, chimneyDammed: $chimneyDammed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AtticInsulationChecklistImpl &&
            (identical(other.insulationMarkersInstalled,
                    insulationMarkersInstalled) ||
                other.insulationMarkersInstalled ==
                    insulationMarkersInstalled) &&
            (identical(other.lightsDammed, lightsDammed) ||
                other.lightsDammed == lightsDammed) &&
            (identical(other.bathroomFansVentedOut, bathroomFansVentedOut) ||
                other.bathroomFansVentedOut == bathroomFansVentedOut) &&
            (identical(other.bathroomFansDammed, bathroomFansDammed) ||
                other.bathroomFansDammed == bathroomFansDammed) &&
            (identical(
                    other.measurementsAreAccurate, measurementsAreAccurate) ||
                other.measurementsAreAccurate == measurementsAreAccurate) &&
            (identical(other.venilationChecked, venilationChecked) ||
                other.venilationChecked == venilationChecked) &&
            (identical(other.chimneyDammed, chimneyDammed) ||
                other.chimneyDammed == chimneyDammed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      insulationMarkersInstalled,
      lightsDammed,
      bathroomFansVentedOut,
      bathroomFansDammed,
      measurementsAreAccurate,
      venilationChecked,
      chimneyDammed);

  /// Create a copy of AtticInsulationChecklist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AtticInsulationChecklistImplCopyWith<_$AtticInsulationChecklistImpl>
      get copyWith => __$$AtticInsulationChecklistImplCopyWithImpl<
          _$AtticInsulationChecklistImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AtticInsulationChecklistImplToJson(
      this,
    );
  }
}

abstract class _AtticInsulationChecklist implements AtticInsulationChecklist {
  const factory _AtticInsulationChecklist(
      {final String? insulationMarkersInstalled,
      final String? lightsDammed,
      final String? bathroomFansVentedOut,
      final String? bathroomFansDammed,
      final String? measurementsAreAccurate,
      final String? venilationChecked,
      final String? chimneyDammed}) = _$AtticInsulationChecklistImpl;

  factory _AtticInsulationChecklist.fromJson(Map<String, dynamic> json) =
      _$AtticInsulationChecklistImpl.fromJson;

  @override
  String? get insulationMarkersInstalled;
  @override
  String? get lightsDammed;
  @override
  String? get bathroomFansVentedOut;
  @override
  String? get bathroomFansDammed;
  @override
  String? get measurementsAreAccurate;
  @override
  String? get venilationChecked;
  @override
  String? get chimneyDammed;

  /// Create a copy of AtticInsulationChecklist
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AtticInsulationChecklistImplCopyWith<_$AtticInsulationChecklistImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Coordinates _$CoordinatesFromJson(Map<String, dynamic> json) {
  return _Coordinates.fromJson(json);
}

/// @nodoc
mixin _$Coordinates {
  int? get latitude => throw _privateConstructorUsedError;
  int? get longitude => throw _privateConstructorUsedError;

  /// Serializes this Coordinates to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Coordinates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoordinatesCopyWith<Coordinates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordinatesCopyWith<$Res> {
  factory $CoordinatesCopyWith(
          Coordinates value, $Res Function(Coordinates) then) =
      _$CoordinatesCopyWithImpl<$Res, Coordinates>;
  @useResult
  $Res call({int? latitude, int? longitude});
}

/// @nodoc
class _$CoordinatesCopyWithImpl<$Res, $Val extends Coordinates>
    implements $CoordinatesCopyWith<$Res> {
  _$CoordinatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Coordinates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as int?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoordinatesImplCopyWith<$Res>
    implements $CoordinatesCopyWith<$Res> {
  factory _$$CoordinatesImplCopyWith(
          _$CoordinatesImpl value, $Res Function(_$CoordinatesImpl) then) =
      __$$CoordinatesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? latitude, int? longitude});
}

/// @nodoc
class __$$CoordinatesImplCopyWithImpl<$Res>
    extends _$CoordinatesCopyWithImpl<$Res, _$CoordinatesImpl>
    implements _$$CoordinatesImplCopyWith<$Res> {
  __$$CoordinatesImplCopyWithImpl(
      _$CoordinatesImpl _value, $Res Function(_$CoordinatesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Coordinates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$CoordinatesImpl(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as int?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoordinatesImpl implements _Coordinates {
  const _$CoordinatesImpl({this.latitude, this.longitude});

  factory _$CoordinatesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoordinatesImplFromJson(json);

  @override
  final int? latitude;
  @override
  final int? longitude;

  @override
  String toString() {
    return 'Coordinates(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoordinatesImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  /// Create a copy of Coordinates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoordinatesImplCopyWith<_$CoordinatesImpl> get copyWith =>
      __$$CoordinatesImplCopyWithImpl<_$CoordinatesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoordinatesImplToJson(
      this,
    );
  }
}

abstract class _Coordinates implements Coordinates {
  const factory _Coordinates({final int? latitude, final int? longitude}) =
      _$CoordinatesImpl;

  factory _Coordinates.fromJson(Map<String, dynamic> json) =
      _$CoordinatesImpl.fromJson;

  @override
  int? get latitude;
  @override
  int? get longitude;

  /// Create a copy of Coordinates
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoordinatesImplCopyWith<_$CoordinatesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FinalWalkthrough _$FinalWalkthroughFromJson(Map<String, dynamic> json) {
  return _FinalWalkthrough.fromJson(json);
}

/// @nodoc
mixin _$FinalWalkthrough {
  FinalWalkthroughChecklist? get checklist =>
      throw _privateConstructorUsedError;
  List<String>? get selfHelpImgs => throw _privateConstructorUsedError;
  bool? get contractChanges => throw _privateConstructorUsedError;
  String? get changeOrderBy => throw _privateConstructorUsedError;
  String? get changeOrdersSpecification => throw _privateConstructorUsedError;
  List<String>? get changeOrderPics => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  int? get postBlowerDoor => throw _privateConstructorUsedError;
  String? get postBlowerDoorPic => throw _privateConstructorUsedError;
  String? get certificateOfInsulationPostedNearElectricalPanel =>
      throw _privateConstructorUsedError;
  bool? get leftConfirmation => throw _privateConstructorUsedError;
  bool? get bathroomConfirmation => throw _privateConstructorUsedError;
  List<String>? get qualityPics => throw _privateConstructorUsedError;
  String? get customerReview => throw _privateConstructorUsedError;
  String? get contactMethod => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;

  /// Serializes this FinalWalkthrough to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FinalWalkthrough
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FinalWalkthroughCopyWith<FinalWalkthrough> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinalWalkthroughCopyWith<$Res> {
  factory $FinalWalkthroughCopyWith(
          FinalWalkthrough value, $Res Function(FinalWalkthrough) then) =
      _$FinalWalkthroughCopyWithImpl<$Res, FinalWalkthrough>;
  @useResult
  $Res call(
      {FinalWalkthroughChecklist? checklist,
      List<String>? selfHelpImgs,
      bool? contractChanges,
      String? changeOrderBy,
      String? changeOrdersSpecification,
      List<String>? changeOrderPics,
      String? notes,
      int? postBlowerDoor,
      String? postBlowerDoorPic,
      String? certificateOfInsulationPostedNearElectricalPanel,
      bool? leftConfirmation,
      bool? bathroomConfirmation,
      List<String>? qualityPics,
      String? customerReview,
      String? contactMethod,
      String? email,
      String? phoneNumber});

  $FinalWalkthroughChecklistCopyWith<$Res>? get checklist;
}

/// @nodoc
class _$FinalWalkthroughCopyWithImpl<$Res, $Val extends FinalWalkthrough>
    implements $FinalWalkthroughCopyWith<$Res> {
  _$FinalWalkthroughCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FinalWalkthrough
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checklist = freezed,
    Object? selfHelpImgs = freezed,
    Object? contractChanges = freezed,
    Object? changeOrderBy = freezed,
    Object? changeOrdersSpecification = freezed,
    Object? changeOrderPics = freezed,
    Object? notes = freezed,
    Object? postBlowerDoor = freezed,
    Object? postBlowerDoorPic = freezed,
    Object? certificateOfInsulationPostedNearElectricalPanel = freezed,
    Object? leftConfirmation = freezed,
    Object? bathroomConfirmation = freezed,
    Object? qualityPics = freezed,
    Object? customerReview = freezed,
    Object? contactMethod = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      checklist: freezed == checklist
          ? _value.checklist
          : checklist // ignore: cast_nullable_to_non_nullable
              as FinalWalkthroughChecklist?,
      selfHelpImgs: freezed == selfHelpImgs
          ? _value.selfHelpImgs
          : selfHelpImgs // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      contractChanges: freezed == contractChanges
          ? _value.contractChanges
          : contractChanges // ignore: cast_nullable_to_non_nullable
              as bool?,
      changeOrderBy: freezed == changeOrderBy
          ? _value.changeOrderBy
          : changeOrderBy // ignore: cast_nullable_to_non_nullable
              as String?,
      changeOrdersSpecification: freezed == changeOrdersSpecification
          ? _value.changeOrdersSpecification
          : changeOrdersSpecification // ignore: cast_nullable_to_non_nullable
              as String?,
      changeOrderPics: freezed == changeOrderPics
          ? _value.changeOrderPics
          : changeOrderPics // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      postBlowerDoor: freezed == postBlowerDoor
          ? _value.postBlowerDoor
          : postBlowerDoor // ignore: cast_nullable_to_non_nullable
              as int?,
      postBlowerDoorPic: freezed == postBlowerDoorPic
          ? _value.postBlowerDoorPic
          : postBlowerDoorPic // ignore: cast_nullable_to_non_nullable
              as String?,
      certificateOfInsulationPostedNearElectricalPanel: freezed ==
              certificateOfInsulationPostedNearElectricalPanel
          ? _value.certificateOfInsulationPostedNearElectricalPanel
          : certificateOfInsulationPostedNearElectricalPanel // ignore: cast_nullable_to_non_nullable
              as String?,
      leftConfirmation: freezed == leftConfirmation
          ? _value.leftConfirmation
          : leftConfirmation // ignore: cast_nullable_to_non_nullable
              as bool?,
      bathroomConfirmation: freezed == bathroomConfirmation
          ? _value.bathroomConfirmation
          : bathroomConfirmation // ignore: cast_nullable_to_non_nullable
              as bool?,
      qualityPics: freezed == qualityPics
          ? _value.qualityPics
          : qualityPics // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      customerReview: freezed == customerReview
          ? _value.customerReview
          : customerReview // ignore: cast_nullable_to_non_nullable
              as String?,
      contactMethod: freezed == contactMethod
          ? _value.contactMethod
          : contactMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of FinalWalkthrough
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FinalWalkthroughChecklistCopyWith<$Res>? get checklist {
    if (_value.checklist == null) {
      return null;
    }

    return $FinalWalkthroughChecklistCopyWith<$Res>(_value.checklist!, (value) {
      return _then(_value.copyWith(checklist: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FinalWalkthroughImplCopyWith<$Res>
    implements $FinalWalkthroughCopyWith<$Res> {
  factory _$$FinalWalkthroughImplCopyWith(_$FinalWalkthroughImpl value,
          $Res Function(_$FinalWalkthroughImpl) then) =
      __$$FinalWalkthroughImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FinalWalkthroughChecklist? checklist,
      List<String>? selfHelpImgs,
      bool? contractChanges,
      String? changeOrderBy,
      String? changeOrdersSpecification,
      List<String>? changeOrderPics,
      String? notes,
      int? postBlowerDoor,
      String? postBlowerDoorPic,
      String? certificateOfInsulationPostedNearElectricalPanel,
      bool? leftConfirmation,
      bool? bathroomConfirmation,
      List<String>? qualityPics,
      String? customerReview,
      String? contactMethod,
      String? email,
      String? phoneNumber});

  @override
  $FinalWalkthroughChecklistCopyWith<$Res>? get checklist;
}

/// @nodoc
class __$$FinalWalkthroughImplCopyWithImpl<$Res>
    extends _$FinalWalkthroughCopyWithImpl<$Res, _$FinalWalkthroughImpl>
    implements _$$FinalWalkthroughImplCopyWith<$Res> {
  __$$FinalWalkthroughImplCopyWithImpl(_$FinalWalkthroughImpl _value,
      $Res Function(_$FinalWalkthroughImpl) _then)
      : super(_value, _then);

  /// Create a copy of FinalWalkthrough
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checklist = freezed,
    Object? selfHelpImgs = freezed,
    Object? contractChanges = freezed,
    Object? changeOrderBy = freezed,
    Object? changeOrdersSpecification = freezed,
    Object? changeOrderPics = freezed,
    Object? notes = freezed,
    Object? postBlowerDoor = freezed,
    Object? postBlowerDoorPic = freezed,
    Object? certificateOfInsulationPostedNearElectricalPanel = freezed,
    Object? leftConfirmation = freezed,
    Object? bathroomConfirmation = freezed,
    Object? qualityPics = freezed,
    Object? customerReview = freezed,
    Object? contactMethod = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$FinalWalkthroughImpl(
      checklist: freezed == checklist
          ? _value.checklist
          : checklist // ignore: cast_nullable_to_non_nullable
              as FinalWalkthroughChecklist?,
      selfHelpImgs: freezed == selfHelpImgs
          ? _value._selfHelpImgs
          : selfHelpImgs // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      contractChanges: freezed == contractChanges
          ? _value.contractChanges
          : contractChanges // ignore: cast_nullable_to_non_nullable
              as bool?,
      changeOrderBy: freezed == changeOrderBy
          ? _value.changeOrderBy
          : changeOrderBy // ignore: cast_nullable_to_non_nullable
              as String?,
      changeOrdersSpecification: freezed == changeOrdersSpecification
          ? _value.changeOrdersSpecification
          : changeOrdersSpecification // ignore: cast_nullable_to_non_nullable
              as String?,
      changeOrderPics: freezed == changeOrderPics
          ? _value._changeOrderPics
          : changeOrderPics // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      postBlowerDoor: freezed == postBlowerDoor
          ? _value.postBlowerDoor
          : postBlowerDoor // ignore: cast_nullable_to_non_nullable
              as int?,
      postBlowerDoorPic: freezed == postBlowerDoorPic
          ? _value.postBlowerDoorPic
          : postBlowerDoorPic // ignore: cast_nullable_to_non_nullable
              as String?,
      certificateOfInsulationPostedNearElectricalPanel: freezed ==
              certificateOfInsulationPostedNearElectricalPanel
          ? _value.certificateOfInsulationPostedNearElectricalPanel
          : certificateOfInsulationPostedNearElectricalPanel // ignore: cast_nullable_to_non_nullable
              as String?,
      leftConfirmation: freezed == leftConfirmation
          ? _value.leftConfirmation
          : leftConfirmation // ignore: cast_nullable_to_non_nullable
              as bool?,
      bathroomConfirmation: freezed == bathroomConfirmation
          ? _value.bathroomConfirmation
          : bathroomConfirmation // ignore: cast_nullable_to_non_nullable
              as bool?,
      qualityPics: freezed == qualityPics
          ? _value._qualityPics
          : qualityPics // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      customerReview: freezed == customerReview
          ? _value.customerReview
          : customerReview // ignore: cast_nullable_to_non_nullable
              as String?,
      contactMethod: freezed == contactMethod
          ? _value.contactMethod
          : contactMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FinalWalkthroughImpl implements _FinalWalkthrough {
  const _$FinalWalkthroughImpl(
      {this.checklist,
      final List<String>? selfHelpImgs,
      this.contractChanges,
      this.changeOrderBy,
      this.changeOrdersSpecification,
      final List<String>? changeOrderPics,
      this.notes,
      this.postBlowerDoor,
      this.postBlowerDoorPic,
      this.certificateOfInsulationPostedNearElectricalPanel,
      this.leftConfirmation,
      this.bathroomConfirmation,
      final List<String>? qualityPics,
      this.customerReview,
      this.contactMethod,
      this.email,
      this.phoneNumber})
      : _selfHelpImgs = selfHelpImgs,
        _changeOrderPics = changeOrderPics,
        _qualityPics = qualityPics;

  factory _$FinalWalkthroughImpl.fromJson(Map<String, dynamic> json) =>
      _$$FinalWalkthroughImplFromJson(json);

  @override
  final FinalWalkthroughChecklist? checklist;
  final List<String>? _selfHelpImgs;
  @override
  List<String>? get selfHelpImgs {
    final value = _selfHelpImgs;
    if (value == null) return null;
    if (_selfHelpImgs is EqualUnmodifiableListView) return _selfHelpImgs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? contractChanges;
  @override
  final String? changeOrderBy;
  @override
  final String? changeOrdersSpecification;
  final List<String>? _changeOrderPics;
  @override
  List<String>? get changeOrderPics {
    final value = _changeOrderPics;
    if (value == null) return null;
    if (_changeOrderPics is EqualUnmodifiableListView) return _changeOrderPics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? notes;
  @override
  final int? postBlowerDoor;
  @override
  final String? postBlowerDoorPic;
  @override
  final String? certificateOfInsulationPostedNearElectricalPanel;
  @override
  final bool? leftConfirmation;
  @override
  final bool? bathroomConfirmation;
  final List<String>? _qualityPics;
  @override
  List<String>? get qualityPics {
    final value = _qualityPics;
    if (value == null) return null;
    if (_qualityPics is EqualUnmodifiableListView) return _qualityPics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? customerReview;
  @override
  final String? contactMethod;
  @override
  final String? email;
  @override
  final String? phoneNumber;

  @override
  String toString() {
    return 'FinalWalkthrough(checklist: $checklist, selfHelpImgs: $selfHelpImgs, contractChanges: $contractChanges, changeOrderBy: $changeOrderBy, changeOrdersSpecification: $changeOrdersSpecification, changeOrderPics: $changeOrderPics, notes: $notes, postBlowerDoor: $postBlowerDoor, postBlowerDoorPic: $postBlowerDoorPic, certificateOfInsulationPostedNearElectricalPanel: $certificateOfInsulationPostedNearElectricalPanel, leftConfirmation: $leftConfirmation, bathroomConfirmation: $bathroomConfirmation, qualityPics: $qualityPics, customerReview: $customerReview, contactMethod: $contactMethod, email: $email, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinalWalkthroughImpl &&
            (identical(other.checklist, checklist) ||
                other.checklist == checklist) &&
            const DeepCollectionEquality()
                .equals(other._selfHelpImgs, _selfHelpImgs) &&
            (identical(other.contractChanges, contractChanges) ||
                other.contractChanges == contractChanges) &&
            (identical(other.changeOrderBy, changeOrderBy) ||
                other.changeOrderBy == changeOrderBy) &&
            (identical(other.changeOrdersSpecification,
                    changeOrdersSpecification) ||
                other.changeOrdersSpecification == changeOrdersSpecification) &&
            const DeepCollectionEquality()
                .equals(other._changeOrderPics, _changeOrderPics) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.postBlowerDoor, postBlowerDoor) ||
                other.postBlowerDoor == postBlowerDoor) &&
            (identical(other.postBlowerDoorPic, postBlowerDoorPic) ||
                other.postBlowerDoorPic == postBlowerDoorPic) &&
            (identical(other.certificateOfInsulationPostedNearElectricalPanel,
                    certificateOfInsulationPostedNearElectricalPanel) ||
                other.certificateOfInsulationPostedNearElectricalPanel ==
                    certificateOfInsulationPostedNearElectricalPanel) &&
            (identical(other.leftConfirmation, leftConfirmation) ||
                other.leftConfirmation == leftConfirmation) &&
            (identical(other.bathroomConfirmation, bathroomConfirmation) ||
                other.bathroomConfirmation == bathroomConfirmation) &&
            const DeepCollectionEquality()
                .equals(other._qualityPics, _qualityPics) &&
            (identical(other.customerReview, customerReview) ||
                other.customerReview == customerReview) &&
            (identical(other.contactMethod, contactMethod) ||
                other.contactMethod == contactMethod) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      checklist,
      const DeepCollectionEquality().hash(_selfHelpImgs),
      contractChanges,
      changeOrderBy,
      changeOrdersSpecification,
      const DeepCollectionEquality().hash(_changeOrderPics),
      notes,
      postBlowerDoor,
      postBlowerDoorPic,
      certificateOfInsulationPostedNearElectricalPanel,
      leftConfirmation,
      bathroomConfirmation,
      const DeepCollectionEquality().hash(_qualityPics),
      customerReview,
      contactMethod,
      email,
      phoneNumber);

  /// Create a copy of FinalWalkthrough
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FinalWalkthroughImplCopyWith<_$FinalWalkthroughImpl> get copyWith =>
      __$$FinalWalkthroughImplCopyWithImpl<_$FinalWalkthroughImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FinalWalkthroughImplToJson(
      this,
    );
  }
}

abstract class _FinalWalkthrough implements FinalWalkthrough {
  const factory _FinalWalkthrough(
      {final FinalWalkthroughChecklist? checklist,
      final List<String>? selfHelpImgs,
      final bool? contractChanges,
      final String? changeOrderBy,
      final String? changeOrdersSpecification,
      final List<String>? changeOrderPics,
      final String? notes,
      final int? postBlowerDoor,
      final String? postBlowerDoorPic,
      final String? certificateOfInsulationPostedNearElectricalPanel,
      final bool? leftConfirmation,
      final bool? bathroomConfirmation,
      final List<String>? qualityPics,
      final String? customerReview,
      final String? contactMethod,
      final String? email,
      final String? phoneNumber}) = _$FinalWalkthroughImpl;

  factory _FinalWalkthrough.fromJson(Map<String, dynamic> json) =
      _$FinalWalkthroughImpl.fromJson;

  @override
  FinalWalkthroughChecklist? get checklist;
  @override
  List<String>? get selfHelpImgs;
  @override
  bool? get contractChanges;
  @override
  String? get changeOrderBy;
  @override
  String? get changeOrdersSpecification;
  @override
  List<String>? get changeOrderPics;
  @override
  String? get notes;
  @override
  int? get postBlowerDoor;
  @override
  String? get postBlowerDoorPic;
  @override
  String? get certificateOfInsulationPostedNearElectricalPanel;
  @override
  bool? get leftConfirmation;
  @override
  bool? get bathroomConfirmation;
  @override
  List<String>? get qualityPics;
  @override
  String? get customerReview;
  @override
  String? get contactMethod;
  @override
  String? get email;
  @override
  String? get phoneNumber;

  /// Create a copy of FinalWalkthrough
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FinalWalkthroughImplCopyWith<_$FinalWalkthroughImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FinalWalkthroughChecklist _$FinalWalkthroughChecklistFromJson(
    Map<String, dynamic> json) {
  return _FinalWalkthroughChecklist.fromJson(json);
}

/// @nodoc
mixin _$FinalWalkthroughChecklist {
  String? get airSealing => throw _privateConstructorUsedError;
  String? get zonalPressure => throw _privateConstructorUsedError;
  String? get accuVents => throw _privateConstructorUsedError;
  String? get finishedAttic => throw _privateConstructorUsedError;
  String? get certificateofInsulation => throw _privateConstructorUsedError;
  String? get generalQualityPictures => throw _privateConstructorUsedError;

  /// Serializes this FinalWalkthroughChecklist to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FinalWalkthroughChecklist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FinalWalkthroughChecklistCopyWith<FinalWalkthroughChecklist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinalWalkthroughChecklistCopyWith<$Res> {
  factory $FinalWalkthroughChecklistCopyWith(FinalWalkthroughChecklist value,
          $Res Function(FinalWalkthroughChecklist) then) =
      _$FinalWalkthroughChecklistCopyWithImpl<$Res, FinalWalkthroughChecklist>;
  @useResult
  $Res call(
      {String? airSealing,
      String? zonalPressure,
      String? accuVents,
      String? finishedAttic,
      String? certificateofInsulation,
      String? generalQualityPictures});
}

/// @nodoc
class _$FinalWalkthroughChecklistCopyWithImpl<$Res,
        $Val extends FinalWalkthroughChecklist>
    implements $FinalWalkthroughChecklistCopyWith<$Res> {
  _$FinalWalkthroughChecklistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FinalWalkthroughChecklist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? airSealing = freezed,
    Object? zonalPressure = freezed,
    Object? accuVents = freezed,
    Object? finishedAttic = freezed,
    Object? certificateofInsulation = freezed,
    Object? generalQualityPictures = freezed,
  }) {
    return _then(_value.copyWith(
      airSealing: freezed == airSealing
          ? _value.airSealing
          : airSealing // ignore: cast_nullable_to_non_nullable
              as String?,
      zonalPressure: freezed == zonalPressure
          ? _value.zonalPressure
          : zonalPressure // ignore: cast_nullable_to_non_nullable
              as String?,
      accuVents: freezed == accuVents
          ? _value.accuVents
          : accuVents // ignore: cast_nullable_to_non_nullable
              as String?,
      finishedAttic: freezed == finishedAttic
          ? _value.finishedAttic
          : finishedAttic // ignore: cast_nullable_to_non_nullable
              as String?,
      certificateofInsulation: freezed == certificateofInsulation
          ? _value.certificateofInsulation
          : certificateofInsulation // ignore: cast_nullable_to_non_nullable
              as String?,
      generalQualityPictures: freezed == generalQualityPictures
          ? _value.generalQualityPictures
          : generalQualityPictures // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FinalWalkthroughChecklistImplCopyWith<$Res>
    implements $FinalWalkthroughChecklistCopyWith<$Res> {
  factory _$$FinalWalkthroughChecklistImplCopyWith(
          _$FinalWalkthroughChecklistImpl value,
          $Res Function(_$FinalWalkthroughChecklistImpl) then) =
      __$$FinalWalkthroughChecklistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? airSealing,
      String? zonalPressure,
      String? accuVents,
      String? finishedAttic,
      String? certificateofInsulation,
      String? generalQualityPictures});
}

/// @nodoc
class __$$FinalWalkthroughChecklistImplCopyWithImpl<$Res>
    extends _$FinalWalkthroughChecklistCopyWithImpl<$Res,
        _$FinalWalkthroughChecklistImpl>
    implements _$$FinalWalkthroughChecklistImplCopyWith<$Res> {
  __$$FinalWalkthroughChecklistImplCopyWithImpl(
      _$FinalWalkthroughChecklistImpl _value,
      $Res Function(_$FinalWalkthroughChecklistImpl) _then)
      : super(_value, _then);

  /// Create a copy of FinalWalkthroughChecklist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? airSealing = freezed,
    Object? zonalPressure = freezed,
    Object? accuVents = freezed,
    Object? finishedAttic = freezed,
    Object? certificateofInsulation = freezed,
    Object? generalQualityPictures = freezed,
  }) {
    return _then(_$FinalWalkthroughChecklistImpl(
      airSealing: freezed == airSealing
          ? _value.airSealing
          : airSealing // ignore: cast_nullable_to_non_nullable
              as String?,
      zonalPressure: freezed == zonalPressure
          ? _value.zonalPressure
          : zonalPressure // ignore: cast_nullable_to_non_nullable
              as String?,
      accuVents: freezed == accuVents
          ? _value.accuVents
          : accuVents // ignore: cast_nullable_to_non_nullable
              as String?,
      finishedAttic: freezed == finishedAttic
          ? _value.finishedAttic
          : finishedAttic // ignore: cast_nullable_to_non_nullable
              as String?,
      certificateofInsulation: freezed == certificateofInsulation
          ? _value.certificateofInsulation
          : certificateofInsulation // ignore: cast_nullable_to_non_nullable
              as String?,
      generalQualityPictures: freezed == generalQualityPictures
          ? _value.generalQualityPictures
          : generalQualityPictures // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FinalWalkthroughChecklistImpl implements _FinalWalkthroughChecklist {
  const _$FinalWalkthroughChecklistImpl(
      {this.airSealing,
      this.zonalPressure,
      this.accuVents,
      this.finishedAttic,
      this.certificateofInsulation,
      this.generalQualityPictures});

  factory _$FinalWalkthroughChecklistImpl.fromJson(Map<String, dynamic> json) =>
      _$$FinalWalkthroughChecklistImplFromJson(json);

  @override
  final String? airSealing;
  @override
  final String? zonalPressure;
  @override
  final String? accuVents;
  @override
  final String? finishedAttic;
  @override
  final String? certificateofInsulation;
  @override
  final String? generalQualityPictures;

  @override
  String toString() {
    return 'FinalWalkthroughChecklist(airSealing: $airSealing, zonalPressure: $zonalPressure, accuVents: $accuVents, finishedAttic: $finishedAttic, certificateofInsulation: $certificateofInsulation, generalQualityPictures: $generalQualityPictures)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinalWalkthroughChecklistImpl &&
            (identical(other.airSealing, airSealing) ||
                other.airSealing == airSealing) &&
            (identical(other.zonalPressure, zonalPressure) ||
                other.zonalPressure == zonalPressure) &&
            (identical(other.accuVents, accuVents) ||
                other.accuVents == accuVents) &&
            (identical(other.finishedAttic, finishedAttic) ||
                other.finishedAttic == finishedAttic) &&
            (identical(
                    other.certificateofInsulation, certificateofInsulation) ||
                other.certificateofInsulation == certificateofInsulation) &&
            (identical(other.generalQualityPictures, generalQualityPictures) ||
                other.generalQualityPictures == generalQualityPictures));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      airSealing,
      zonalPressure,
      accuVents,
      finishedAttic,
      certificateofInsulation,
      generalQualityPictures);

  /// Create a copy of FinalWalkthroughChecklist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FinalWalkthroughChecklistImplCopyWith<_$FinalWalkthroughChecklistImpl>
      get copyWith => __$$FinalWalkthroughChecklistImplCopyWithImpl<
          _$FinalWalkthroughChecklistImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FinalWalkthroughChecklistImplToJson(
      this,
    );
  }
}

abstract class _FinalWalkthroughChecklist implements FinalWalkthroughChecklist {
  const factory _FinalWalkthroughChecklist(
      {final String? airSealing,
      final String? zonalPressure,
      final String? accuVents,
      final String? finishedAttic,
      final String? certificateofInsulation,
      final String? generalQualityPictures}) = _$FinalWalkthroughChecklistImpl;

  factory _FinalWalkthroughChecklist.fromJson(Map<String, dynamic> json) =
      _$FinalWalkthroughChecklistImpl.fromJson;

  @override
  String? get airSealing;
  @override
  String? get zonalPressure;
  @override
  String? get accuVents;
  @override
  String? get finishedAttic;
  @override
  String? get certificateofInsulation;
  @override
  String? get generalQualityPictures;

  /// Create a copy of FinalWalkthroughChecklist
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FinalWalkthroughChecklistImplCopyWith<_$FinalWalkthroughChecklistImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InitialWalkthrough _$InitialWalkthroughFromJson(Map<String, dynamic> json) {
  return _InitialWalkthrough.fromJson(json);
}

/// @nodoc
mixin _$InitialWalkthrough {
  InitialWalkthroughChecklist? get checklist =>
      throw _privateConstructorUsedError;
  bool? get blowerDoorStatus => throw _privateConstructorUsedError;
  int? get blowerStartingValue => throw _privateConstructorUsedError;
  String? get startingBlowerDoorPic => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get heatingSystemPic => throw _privateConstructorUsedError;
  String? get waterHeaterPic => throw _privateConstructorUsedError;
  List<String>? get concernsPic => throw _privateConstructorUsedError;

  /// Serializes this InitialWalkthrough to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InitialWalkthrough
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InitialWalkthroughCopyWith<InitialWalkthrough> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitialWalkthroughCopyWith<$Res> {
  factory $InitialWalkthroughCopyWith(
          InitialWalkthrough value, $Res Function(InitialWalkthrough) then) =
      _$InitialWalkthroughCopyWithImpl<$Res, InitialWalkthrough>;
  @useResult
  $Res call(
      {InitialWalkthroughChecklist? checklist,
      bool? blowerDoorStatus,
      int? blowerStartingValue,
      String? startingBlowerDoorPic,
      String? notes,
      String? heatingSystemPic,
      String? waterHeaterPic,
      List<String>? concernsPic});

  $InitialWalkthroughChecklistCopyWith<$Res>? get checklist;
}

/// @nodoc
class _$InitialWalkthroughCopyWithImpl<$Res, $Val extends InitialWalkthrough>
    implements $InitialWalkthroughCopyWith<$Res> {
  _$InitialWalkthroughCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InitialWalkthrough
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checklist = freezed,
    Object? blowerDoorStatus = freezed,
    Object? blowerStartingValue = freezed,
    Object? startingBlowerDoorPic = freezed,
    Object? notes = freezed,
    Object? heatingSystemPic = freezed,
    Object? waterHeaterPic = freezed,
    Object? concernsPic = freezed,
  }) {
    return _then(_value.copyWith(
      checklist: freezed == checklist
          ? _value.checklist
          : checklist // ignore: cast_nullable_to_non_nullable
              as InitialWalkthroughChecklist?,
      blowerDoorStatus: freezed == blowerDoorStatus
          ? _value.blowerDoorStatus
          : blowerDoorStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      blowerStartingValue: freezed == blowerStartingValue
          ? _value.blowerStartingValue
          : blowerStartingValue // ignore: cast_nullable_to_non_nullable
              as int?,
      startingBlowerDoorPic: freezed == startingBlowerDoorPic
          ? _value.startingBlowerDoorPic
          : startingBlowerDoorPic // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      heatingSystemPic: freezed == heatingSystemPic
          ? _value.heatingSystemPic
          : heatingSystemPic // ignore: cast_nullable_to_non_nullable
              as String?,
      waterHeaterPic: freezed == waterHeaterPic
          ? _value.waterHeaterPic
          : waterHeaterPic // ignore: cast_nullable_to_non_nullable
              as String?,
      concernsPic: freezed == concernsPic
          ? _value.concernsPic
          : concernsPic // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  /// Create a copy of InitialWalkthrough
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InitialWalkthroughChecklistCopyWith<$Res>? get checklist {
    if (_value.checklist == null) {
      return null;
    }

    return $InitialWalkthroughChecklistCopyWith<$Res>(_value.checklist!,
        (value) {
      return _then(_value.copyWith(checklist: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialWalkthroughImplCopyWith<$Res>
    implements $InitialWalkthroughCopyWith<$Res> {
  factory _$$InitialWalkthroughImplCopyWith(_$InitialWalkthroughImpl value,
          $Res Function(_$InitialWalkthroughImpl) then) =
      __$$InitialWalkthroughImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {InitialWalkthroughChecklist? checklist,
      bool? blowerDoorStatus,
      int? blowerStartingValue,
      String? startingBlowerDoorPic,
      String? notes,
      String? heatingSystemPic,
      String? waterHeaterPic,
      List<String>? concernsPic});

  @override
  $InitialWalkthroughChecklistCopyWith<$Res>? get checklist;
}

/// @nodoc
class __$$InitialWalkthroughImplCopyWithImpl<$Res>
    extends _$InitialWalkthroughCopyWithImpl<$Res, _$InitialWalkthroughImpl>
    implements _$$InitialWalkthroughImplCopyWith<$Res> {
  __$$InitialWalkthroughImplCopyWithImpl(_$InitialWalkthroughImpl _value,
      $Res Function(_$InitialWalkthroughImpl) _then)
      : super(_value, _then);

  /// Create a copy of InitialWalkthrough
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checklist = freezed,
    Object? blowerDoorStatus = freezed,
    Object? blowerStartingValue = freezed,
    Object? startingBlowerDoorPic = freezed,
    Object? notes = freezed,
    Object? heatingSystemPic = freezed,
    Object? waterHeaterPic = freezed,
    Object? concernsPic = freezed,
  }) {
    return _then(_$InitialWalkthroughImpl(
      checklist: freezed == checklist
          ? _value.checklist
          : checklist // ignore: cast_nullable_to_non_nullable
              as InitialWalkthroughChecklist?,
      blowerDoorStatus: freezed == blowerDoorStatus
          ? _value.blowerDoorStatus
          : blowerDoorStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      blowerStartingValue: freezed == blowerStartingValue
          ? _value.blowerStartingValue
          : blowerStartingValue // ignore: cast_nullable_to_non_nullable
              as int?,
      startingBlowerDoorPic: freezed == startingBlowerDoorPic
          ? _value.startingBlowerDoorPic
          : startingBlowerDoorPic // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      heatingSystemPic: freezed == heatingSystemPic
          ? _value.heatingSystemPic
          : heatingSystemPic // ignore: cast_nullable_to_non_nullable
              as String?,
      waterHeaterPic: freezed == waterHeaterPic
          ? _value.waterHeaterPic
          : waterHeaterPic // ignore: cast_nullable_to_non_nullable
              as String?,
      concernsPic: freezed == concernsPic
          ? _value._concernsPic
          : concernsPic // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InitialWalkthroughImpl implements _InitialWalkthrough {
  const _$InitialWalkthroughImpl(
      {this.checklist,
      this.blowerDoorStatus,
      this.blowerStartingValue,
      this.startingBlowerDoorPic,
      this.notes,
      this.heatingSystemPic,
      this.waterHeaterPic,
      final List<String>? concernsPic})
      : _concernsPic = concernsPic;

  factory _$InitialWalkthroughImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitialWalkthroughImplFromJson(json);

  @override
  final InitialWalkthroughChecklist? checklist;
  @override
  final bool? blowerDoorStatus;
  @override
  final int? blowerStartingValue;
  @override
  final String? startingBlowerDoorPic;
  @override
  final String? notes;
  @override
  final String? heatingSystemPic;
  @override
  final String? waterHeaterPic;
  final List<String>? _concernsPic;
  @override
  List<String>? get concernsPic {
    final value = _concernsPic;
    if (value == null) return null;
    if (_concernsPic is EqualUnmodifiableListView) return _concernsPic;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'InitialWalkthrough(checklist: $checklist, blowerDoorStatus: $blowerDoorStatus, blowerStartingValue: $blowerStartingValue, startingBlowerDoorPic: $startingBlowerDoorPic, notes: $notes, heatingSystemPic: $heatingSystemPic, waterHeaterPic: $waterHeaterPic, concernsPic: $concernsPic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialWalkthroughImpl &&
            (identical(other.checklist, checklist) ||
                other.checklist == checklist) &&
            (identical(other.blowerDoorStatus, blowerDoorStatus) ||
                other.blowerDoorStatus == blowerDoorStatus) &&
            (identical(other.blowerStartingValue, blowerStartingValue) ||
                other.blowerStartingValue == blowerStartingValue) &&
            (identical(other.startingBlowerDoorPic, startingBlowerDoorPic) ||
                other.startingBlowerDoorPic == startingBlowerDoorPic) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.heatingSystemPic, heatingSystemPic) ||
                other.heatingSystemPic == heatingSystemPic) &&
            (identical(other.waterHeaterPic, waterHeaterPic) ||
                other.waterHeaterPic == waterHeaterPic) &&
            const DeepCollectionEquality()
                .equals(other._concernsPic, _concernsPic));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      checklist,
      blowerDoorStatus,
      blowerStartingValue,
      startingBlowerDoorPic,
      notes,
      heatingSystemPic,
      waterHeaterPic,
      const DeepCollectionEquality().hash(_concernsPic));

  /// Create a copy of InitialWalkthrough
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialWalkthroughImplCopyWith<_$InitialWalkthroughImpl> get copyWith =>
      __$$InitialWalkthroughImplCopyWithImpl<_$InitialWalkthroughImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InitialWalkthroughImplToJson(
      this,
    );
  }
}

abstract class _InitialWalkthrough implements InitialWalkthrough {
  const factory _InitialWalkthrough(
      {final InitialWalkthroughChecklist? checklist,
      final bool? blowerDoorStatus,
      final int? blowerStartingValue,
      final String? startingBlowerDoorPic,
      final String? notes,
      final String? heatingSystemPic,
      final String? waterHeaterPic,
      final List<String>? concernsPic}) = _$InitialWalkthroughImpl;

  factory _InitialWalkthrough.fromJson(Map<String, dynamic> json) =
      _$InitialWalkthroughImpl.fromJson;

  @override
  InitialWalkthroughChecklist? get checklist;
  @override
  bool? get blowerDoorStatus;
  @override
  int? get blowerStartingValue;
  @override
  String? get startingBlowerDoorPic;
  @override
  String? get notes;
  @override
  String? get heatingSystemPic;
  @override
  String? get waterHeaterPic;
  @override
  List<String>? get concernsPic;

  /// Create a copy of InitialWalkthrough
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialWalkthroughImplCopyWith<_$InitialWalkthroughImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InitialWalkthroughChecklist _$InitialWalkthroughChecklistFromJson(
    Map<String, dynamic> json) {
  return _InitialWalkthroughChecklist.fromJson(json);
}

/// @nodoc
mixin _$InitialWalkthroughChecklist {
  bool? get knobAndTube => throw _privateConstructorUsedError;
  String? get knobAndTubeImg => throw _privateConstructorUsedError;
  bool? get abestos => throw _privateConstructorUsedError;
  String? get abestosImg => throw _privateConstructorUsedError;
  bool? get titlesOnSite => throw _privateConstructorUsedError;
  String? get titlesOnSiteImg => throw _privateConstructorUsedError;
  bool? get unventedDryers => throw _privateConstructorUsedError;
  String? get unventedDryersImg => throw _privateConstructorUsedError;
  bool? get moistureConcerns => throw _privateConstructorUsedError;
  String? get moistureConcernsImg => throw _privateConstructorUsedError;

  /// Serializes this InitialWalkthroughChecklist to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InitialWalkthroughChecklist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InitialWalkthroughChecklistCopyWith<InitialWalkthroughChecklist>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitialWalkthroughChecklistCopyWith<$Res> {
  factory $InitialWalkthroughChecklistCopyWith(
          InitialWalkthroughChecklist value,
          $Res Function(InitialWalkthroughChecklist) then) =
      _$InitialWalkthroughChecklistCopyWithImpl<$Res,
          InitialWalkthroughChecklist>;
  @useResult
  $Res call(
      {bool? knobAndTube,
      String? knobAndTubeImg,
      bool? abestos,
      String? abestosImg,
      bool? titlesOnSite,
      String? titlesOnSiteImg,
      bool? unventedDryers,
      String? unventedDryersImg,
      bool? moistureConcerns,
      String? moistureConcernsImg});
}

/// @nodoc
class _$InitialWalkthroughChecklistCopyWithImpl<$Res,
        $Val extends InitialWalkthroughChecklist>
    implements $InitialWalkthroughChecklistCopyWith<$Res> {
  _$InitialWalkthroughChecklistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InitialWalkthroughChecklist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? knobAndTube = freezed,
    Object? knobAndTubeImg = freezed,
    Object? abestos = freezed,
    Object? abestosImg = freezed,
    Object? titlesOnSite = freezed,
    Object? titlesOnSiteImg = freezed,
    Object? unventedDryers = freezed,
    Object? unventedDryersImg = freezed,
    Object? moistureConcerns = freezed,
    Object? moistureConcernsImg = freezed,
  }) {
    return _then(_value.copyWith(
      knobAndTube: freezed == knobAndTube
          ? _value.knobAndTube
          : knobAndTube // ignore: cast_nullable_to_non_nullable
              as bool?,
      knobAndTubeImg: freezed == knobAndTubeImg
          ? _value.knobAndTubeImg
          : knobAndTubeImg // ignore: cast_nullable_to_non_nullable
              as String?,
      abestos: freezed == abestos
          ? _value.abestos
          : abestos // ignore: cast_nullable_to_non_nullable
              as bool?,
      abestosImg: freezed == abestosImg
          ? _value.abestosImg
          : abestosImg // ignore: cast_nullable_to_non_nullable
              as String?,
      titlesOnSite: freezed == titlesOnSite
          ? _value.titlesOnSite
          : titlesOnSite // ignore: cast_nullable_to_non_nullable
              as bool?,
      titlesOnSiteImg: freezed == titlesOnSiteImg
          ? _value.titlesOnSiteImg
          : titlesOnSiteImg // ignore: cast_nullable_to_non_nullable
              as String?,
      unventedDryers: freezed == unventedDryers
          ? _value.unventedDryers
          : unventedDryers // ignore: cast_nullable_to_non_nullable
              as bool?,
      unventedDryersImg: freezed == unventedDryersImg
          ? _value.unventedDryersImg
          : unventedDryersImg // ignore: cast_nullable_to_non_nullable
              as String?,
      moistureConcerns: freezed == moistureConcerns
          ? _value.moistureConcerns
          : moistureConcerns // ignore: cast_nullable_to_non_nullable
              as bool?,
      moistureConcernsImg: freezed == moistureConcernsImg
          ? _value.moistureConcernsImg
          : moistureConcernsImg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialWalkthroughChecklistImplCopyWith<$Res>
    implements $InitialWalkthroughChecklistCopyWith<$Res> {
  factory _$$InitialWalkthroughChecklistImplCopyWith(
          _$InitialWalkthroughChecklistImpl value,
          $Res Function(_$InitialWalkthroughChecklistImpl) then) =
      __$$InitialWalkthroughChecklistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? knobAndTube,
      String? knobAndTubeImg,
      bool? abestos,
      String? abestosImg,
      bool? titlesOnSite,
      String? titlesOnSiteImg,
      bool? unventedDryers,
      String? unventedDryersImg,
      bool? moistureConcerns,
      String? moistureConcernsImg});
}

/// @nodoc
class __$$InitialWalkthroughChecklistImplCopyWithImpl<$Res>
    extends _$InitialWalkthroughChecklistCopyWithImpl<$Res,
        _$InitialWalkthroughChecklistImpl>
    implements _$$InitialWalkthroughChecklistImplCopyWith<$Res> {
  __$$InitialWalkthroughChecklistImplCopyWithImpl(
      _$InitialWalkthroughChecklistImpl _value,
      $Res Function(_$InitialWalkthroughChecklistImpl) _then)
      : super(_value, _then);

  /// Create a copy of InitialWalkthroughChecklist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? knobAndTube = freezed,
    Object? knobAndTubeImg = freezed,
    Object? abestos = freezed,
    Object? abestosImg = freezed,
    Object? titlesOnSite = freezed,
    Object? titlesOnSiteImg = freezed,
    Object? unventedDryers = freezed,
    Object? unventedDryersImg = freezed,
    Object? moistureConcerns = freezed,
    Object? moistureConcernsImg = freezed,
  }) {
    return _then(_$InitialWalkthroughChecklistImpl(
      knobAndTube: freezed == knobAndTube
          ? _value.knobAndTube
          : knobAndTube // ignore: cast_nullable_to_non_nullable
              as bool?,
      knobAndTubeImg: freezed == knobAndTubeImg
          ? _value.knobAndTubeImg
          : knobAndTubeImg // ignore: cast_nullable_to_non_nullable
              as String?,
      abestos: freezed == abestos
          ? _value.abestos
          : abestos // ignore: cast_nullable_to_non_nullable
              as bool?,
      abestosImg: freezed == abestosImg
          ? _value.abestosImg
          : abestosImg // ignore: cast_nullable_to_non_nullable
              as String?,
      titlesOnSite: freezed == titlesOnSite
          ? _value.titlesOnSite
          : titlesOnSite // ignore: cast_nullable_to_non_nullable
              as bool?,
      titlesOnSiteImg: freezed == titlesOnSiteImg
          ? _value.titlesOnSiteImg
          : titlesOnSiteImg // ignore: cast_nullable_to_non_nullable
              as String?,
      unventedDryers: freezed == unventedDryers
          ? _value.unventedDryers
          : unventedDryers // ignore: cast_nullable_to_non_nullable
              as bool?,
      unventedDryersImg: freezed == unventedDryersImg
          ? _value.unventedDryersImg
          : unventedDryersImg // ignore: cast_nullable_to_non_nullable
              as String?,
      moistureConcerns: freezed == moistureConcerns
          ? _value.moistureConcerns
          : moistureConcerns // ignore: cast_nullable_to_non_nullable
              as bool?,
      moistureConcernsImg: freezed == moistureConcernsImg
          ? _value.moistureConcernsImg
          : moistureConcernsImg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InitialWalkthroughChecklistImpl
    implements _InitialWalkthroughChecklist {
  const _$InitialWalkthroughChecklistImpl(
      {this.knobAndTube,
      this.knobAndTubeImg,
      this.abestos,
      this.abestosImg,
      this.titlesOnSite,
      this.titlesOnSiteImg,
      this.unventedDryers,
      this.unventedDryersImg,
      this.moistureConcerns,
      this.moistureConcernsImg});

  factory _$InitialWalkthroughChecklistImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$InitialWalkthroughChecklistImplFromJson(json);

  @override
  final bool? knobAndTube;
  @override
  final String? knobAndTubeImg;
  @override
  final bool? abestos;
  @override
  final String? abestosImg;
  @override
  final bool? titlesOnSite;
  @override
  final String? titlesOnSiteImg;
  @override
  final bool? unventedDryers;
  @override
  final String? unventedDryersImg;
  @override
  final bool? moistureConcerns;
  @override
  final String? moistureConcernsImg;

  @override
  String toString() {
    return 'InitialWalkthroughChecklist(knobAndTube: $knobAndTube, knobAndTubeImg: $knobAndTubeImg, abestos: $abestos, abestosImg: $abestosImg, titlesOnSite: $titlesOnSite, titlesOnSiteImg: $titlesOnSiteImg, unventedDryers: $unventedDryers, unventedDryersImg: $unventedDryersImg, moistureConcerns: $moistureConcerns, moistureConcernsImg: $moistureConcernsImg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialWalkthroughChecklistImpl &&
            (identical(other.knobAndTube, knobAndTube) ||
                other.knobAndTube == knobAndTube) &&
            (identical(other.knobAndTubeImg, knobAndTubeImg) ||
                other.knobAndTubeImg == knobAndTubeImg) &&
            (identical(other.abestos, abestos) || other.abestos == abestos) &&
            (identical(other.abestosImg, abestosImg) ||
                other.abestosImg == abestosImg) &&
            (identical(other.titlesOnSite, titlesOnSite) ||
                other.titlesOnSite == titlesOnSite) &&
            (identical(other.titlesOnSiteImg, titlesOnSiteImg) ||
                other.titlesOnSiteImg == titlesOnSiteImg) &&
            (identical(other.unventedDryers, unventedDryers) ||
                other.unventedDryers == unventedDryers) &&
            (identical(other.unventedDryersImg, unventedDryersImg) ||
                other.unventedDryersImg == unventedDryersImg) &&
            (identical(other.moistureConcerns, moistureConcerns) ||
                other.moistureConcerns == moistureConcerns) &&
            (identical(other.moistureConcernsImg, moistureConcernsImg) ||
                other.moistureConcernsImg == moistureConcernsImg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      knobAndTube,
      knobAndTubeImg,
      abestos,
      abestosImg,
      titlesOnSite,
      titlesOnSiteImg,
      unventedDryers,
      unventedDryersImg,
      moistureConcerns,
      moistureConcernsImg);

  /// Create a copy of InitialWalkthroughChecklist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialWalkthroughChecklistImplCopyWith<_$InitialWalkthroughChecklistImpl>
      get copyWith => __$$InitialWalkthroughChecklistImplCopyWithImpl<
          _$InitialWalkthroughChecklistImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InitialWalkthroughChecklistImplToJson(
      this,
    );
  }
}

abstract class _InitialWalkthroughChecklist
    implements InitialWalkthroughChecklist {
  const factory _InitialWalkthroughChecklist(
      {final bool? knobAndTube,
      final String? knobAndTubeImg,
      final bool? abestos,
      final String? abestosImg,
      final bool? titlesOnSite,
      final String? titlesOnSiteImg,
      final bool? unventedDryers,
      final String? unventedDryersImg,
      final bool? moistureConcerns,
      final String? moistureConcernsImg}) = _$InitialWalkthroughChecklistImpl;

  factory _InitialWalkthroughChecklist.fromJson(Map<String, dynamic> json) =
      _$InitialWalkthroughChecklistImpl.fromJson;

  @override
  bool? get knobAndTube;
  @override
  String? get knobAndTubeImg;
  @override
  bool? get abestos;
  @override
  String? get abestosImg;
  @override
  bool? get titlesOnSite;
  @override
  String? get titlesOnSiteImg;
  @override
  bool? get unventedDryers;
  @override
  String? get unventedDryersImg;
  @override
  bool? get moistureConcerns;
  @override
  String? get moistureConcernsImg;

  /// Create a copy of InitialWalkthroughChecklist
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialWalkthroughChecklistImplCopyWith<_$InitialWalkthroughChecklistImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WallInsulation _$WallInsulationFromJson(Map<String, dynamic> json) {
  return _WallInsulation.fromJson(json);
}

/// @nodoc
mixin _$WallInsulation {
  bool? get onWorkOrder => throw _privateConstructorUsedError;
  WallInsulationChecklist? get checklist => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  /// Serializes this WallInsulation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WallInsulation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WallInsulationCopyWith<WallInsulation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WallInsulationCopyWith<$Res> {
  factory $WallInsulationCopyWith(
          WallInsulation value, $Res Function(WallInsulation) then) =
      _$WallInsulationCopyWithImpl<$Res, WallInsulation>;
  @useResult
  $Res call(
      {bool? onWorkOrder, WallInsulationChecklist? checklist, String? notes});

  $WallInsulationChecklistCopyWith<$Res>? get checklist;
}

/// @nodoc
class _$WallInsulationCopyWithImpl<$Res, $Val extends WallInsulation>
    implements $WallInsulationCopyWith<$Res> {
  _$WallInsulationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WallInsulation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onWorkOrder = freezed,
    Object? checklist = freezed,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      onWorkOrder: freezed == onWorkOrder
          ? _value.onWorkOrder
          : onWorkOrder // ignore: cast_nullable_to_non_nullable
              as bool?,
      checklist: freezed == checklist
          ? _value.checklist
          : checklist // ignore: cast_nullable_to_non_nullable
              as WallInsulationChecklist?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of WallInsulation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WallInsulationChecklistCopyWith<$Res>? get checklist {
    if (_value.checklist == null) {
      return null;
    }

    return $WallInsulationChecklistCopyWith<$Res>(_value.checklist!, (value) {
      return _then(_value.copyWith(checklist: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WallInsulationImplCopyWith<$Res>
    implements $WallInsulationCopyWith<$Res> {
  factory _$$WallInsulationImplCopyWith(_$WallInsulationImpl value,
          $Res Function(_$WallInsulationImpl) then) =
      __$$WallInsulationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? onWorkOrder, WallInsulationChecklist? checklist, String? notes});

  @override
  $WallInsulationChecklistCopyWith<$Res>? get checklist;
}

/// @nodoc
class __$$WallInsulationImplCopyWithImpl<$Res>
    extends _$WallInsulationCopyWithImpl<$Res, _$WallInsulationImpl>
    implements _$$WallInsulationImplCopyWith<$Res> {
  __$$WallInsulationImplCopyWithImpl(
      _$WallInsulationImpl _value, $Res Function(_$WallInsulationImpl) _then)
      : super(_value, _then);

  /// Create a copy of WallInsulation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onWorkOrder = freezed,
    Object? checklist = freezed,
    Object? notes = freezed,
  }) {
    return _then(_$WallInsulationImpl(
      onWorkOrder: freezed == onWorkOrder
          ? _value.onWorkOrder
          : onWorkOrder // ignore: cast_nullable_to_non_nullable
              as bool?,
      checklist: freezed == checklist
          ? _value.checklist
          : checklist // ignore: cast_nullable_to_non_nullable
              as WallInsulationChecklist?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WallInsulationImpl implements _WallInsulation {
  const _$WallInsulationImpl({this.onWorkOrder, this.checklist, this.notes});

  factory _$WallInsulationImpl.fromJson(Map<String, dynamic> json) =>
      _$$WallInsulationImplFromJson(json);

  @override
  final bool? onWorkOrder;
  @override
  final WallInsulationChecklist? checklist;
  @override
  final String? notes;

  @override
  String toString() {
    return 'WallInsulation(onWorkOrder: $onWorkOrder, checklist: $checklist, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WallInsulationImpl &&
            (identical(other.onWorkOrder, onWorkOrder) ||
                other.onWorkOrder == onWorkOrder) &&
            (identical(other.checklist, checklist) ||
                other.checklist == checklist) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, onWorkOrder, checklist, notes);

  /// Create a copy of WallInsulation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WallInsulationImplCopyWith<_$WallInsulationImpl> get copyWith =>
      __$$WallInsulationImplCopyWithImpl<_$WallInsulationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WallInsulationImplToJson(
      this,
    );
  }
}

abstract class _WallInsulation implements WallInsulation {
  const factory _WallInsulation(
      {final bool? onWorkOrder,
      final WallInsulationChecklist? checklist,
      final String? notes}) = _$WallInsulationImpl;

  factory _WallInsulation.fromJson(Map<String, dynamic> json) =
      _$WallInsulationImpl.fromJson;

  @override
  bool? get onWorkOrder;
  @override
  WallInsulationChecklist? get checklist;
  @override
  String? get notes;

  /// Create a copy of WallInsulation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WallInsulationImplCopyWith<_$WallInsulationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WallInsulationChecklist _$WallInsulationChecklistFromJson(
    Map<String, dynamic> json) {
  return _WallInsulationChecklist.fromJson(json);
}

/// @nodoc
mixin _$WallInsulationChecklist {
  bool? get wallMeasurementsAccurate => throw _privateConstructorUsedError;
  bool? get drainagePlaneInstalled => throw _privateConstructorUsedError;
  bool? get sidingPutBack => throw _privateConstructorUsedError;
  bool? get cornerBracesChecked => throw _privateConstructorUsedError;
  bool? get blockersChecked => throw _privateConstructorUsedError;

  /// Serializes this WallInsulationChecklist to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WallInsulationChecklist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WallInsulationChecklistCopyWith<WallInsulationChecklist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WallInsulationChecklistCopyWith<$Res> {
  factory $WallInsulationChecklistCopyWith(WallInsulationChecklist value,
          $Res Function(WallInsulationChecklist) then) =
      _$WallInsulationChecklistCopyWithImpl<$Res, WallInsulationChecklist>;
  @useResult
  $Res call(
      {bool? wallMeasurementsAccurate,
      bool? drainagePlaneInstalled,
      bool? sidingPutBack,
      bool? cornerBracesChecked,
      bool? blockersChecked});
}

/// @nodoc
class _$WallInsulationChecklistCopyWithImpl<$Res,
        $Val extends WallInsulationChecklist>
    implements $WallInsulationChecklistCopyWith<$Res> {
  _$WallInsulationChecklistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WallInsulationChecklist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wallMeasurementsAccurate = freezed,
    Object? drainagePlaneInstalled = freezed,
    Object? sidingPutBack = freezed,
    Object? cornerBracesChecked = freezed,
    Object? blockersChecked = freezed,
  }) {
    return _then(_value.copyWith(
      wallMeasurementsAccurate: freezed == wallMeasurementsAccurate
          ? _value.wallMeasurementsAccurate
          : wallMeasurementsAccurate // ignore: cast_nullable_to_non_nullable
              as bool?,
      drainagePlaneInstalled: freezed == drainagePlaneInstalled
          ? _value.drainagePlaneInstalled
          : drainagePlaneInstalled // ignore: cast_nullable_to_non_nullable
              as bool?,
      sidingPutBack: freezed == sidingPutBack
          ? _value.sidingPutBack
          : sidingPutBack // ignore: cast_nullable_to_non_nullable
              as bool?,
      cornerBracesChecked: freezed == cornerBracesChecked
          ? _value.cornerBracesChecked
          : cornerBracesChecked // ignore: cast_nullable_to_non_nullable
              as bool?,
      blockersChecked: freezed == blockersChecked
          ? _value.blockersChecked
          : blockersChecked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WallInsulationChecklistImplCopyWith<$Res>
    implements $WallInsulationChecklistCopyWith<$Res> {
  factory _$$WallInsulationChecklistImplCopyWith(
          _$WallInsulationChecklistImpl value,
          $Res Function(_$WallInsulationChecklistImpl) then) =
      __$$WallInsulationChecklistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? wallMeasurementsAccurate,
      bool? drainagePlaneInstalled,
      bool? sidingPutBack,
      bool? cornerBracesChecked,
      bool? blockersChecked});
}

/// @nodoc
class __$$WallInsulationChecklistImplCopyWithImpl<$Res>
    extends _$WallInsulationChecklistCopyWithImpl<$Res,
        _$WallInsulationChecklistImpl>
    implements _$$WallInsulationChecklistImplCopyWith<$Res> {
  __$$WallInsulationChecklistImplCopyWithImpl(
      _$WallInsulationChecklistImpl _value,
      $Res Function(_$WallInsulationChecklistImpl) _then)
      : super(_value, _then);

  /// Create a copy of WallInsulationChecklist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wallMeasurementsAccurate = freezed,
    Object? drainagePlaneInstalled = freezed,
    Object? sidingPutBack = freezed,
    Object? cornerBracesChecked = freezed,
    Object? blockersChecked = freezed,
  }) {
    return _then(_$WallInsulationChecklistImpl(
      wallMeasurementsAccurate: freezed == wallMeasurementsAccurate
          ? _value.wallMeasurementsAccurate
          : wallMeasurementsAccurate // ignore: cast_nullable_to_non_nullable
              as bool?,
      drainagePlaneInstalled: freezed == drainagePlaneInstalled
          ? _value.drainagePlaneInstalled
          : drainagePlaneInstalled // ignore: cast_nullable_to_non_nullable
              as bool?,
      sidingPutBack: freezed == sidingPutBack
          ? _value.sidingPutBack
          : sidingPutBack // ignore: cast_nullable_to_non_nullable
              as bool?,
      cornerBracesChecked: freezed == cornerBracesChecked
          ? _value.cornerBracesChecked
          : cornerBracesChecked // ignore: cast_nullable_to_non_nullable
              as bool?,
      blockersChecked: freezed == blockersChecked
          ? _value.blockersChecked
          : blockersChecked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WallInsulationChecklistImpl implements _WallInsulationChecklist {
  const _$WallInsulationChecklistImpl(
      {this.wallMeasurementsAccurate,
      this.drainagePlaneInstalled,
      this.sidingPutBack,
      this.cornerBracesChecked,
      this.blockersChecked});

  factory _$WallInsulationChecklistImpl.fromJson(Map<String, dynamic> json) =>
      _$$WallInsulationChecklistImplFromJson(json);

  @override
  final bool? wallMeasurementsAccurate;
  @override
  final bool? drainagePlaneInstalled;
  @override
  final bool? sidingPutBack;
  @override
  final bool? cornerBracesChecked;
  @override
  final bool? blockersChecked;

  @override
  String toString() {
    return 'WallInsulationChecklist(wallMeasurementsAccurate: $wallMeasurementsAccurate, drainagePlaneInstalled: $drainagePlaneInstalled, sidingPutBack: $sidingPutBack, cornerBracesChecked: $cornerBracesChecked, blockersChecked: $blockersChecked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WallInsulationChecklistImpl &&
            (identical(
                    other.wallMeasurementsAccurate, wallMeasurementsAccurate) ||
                other.wallMeasurementsAccurate == wallMeasurementsAccurate) &&
            (identical(other.drainagePlaneInstalled, drainagePlaneInstalled) ||
                other.drainagePlaneInstalled == drainagePlaneInstalled) &&
            (identical(other.sidingPutBack, sidingPutBack) ||
                other.sidingPutBack == sidingPutBack) &&
            (identical(other.cornerBracesChecked, cornerBracesChecked) ||
                other.cornerBracesChecked == cornerBracesChecked) &&
            (identical(other.blockersChecked, blockersChecked) ||
                other.blockersChecked == blockersChecked));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      wallMeasurementsAccurate,
      drainagePlaneInstalled,
      sidingPutBack,
      cornerBracesChecked,
      blockersChecked);

  /// Create a copy of WallInsulationChecklist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WallInsulationChecklistImplCopyWith<_$WallInsulationChecklistImpl>
      get copyWith => __$$WallInsulationChecklistImplCopyWithImpl<
          _$WallInsulationChecklistImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WallInsulationChecklistImplToJson(
      this,
    );
  }
}

abstract class _WallInsulationChecklist implements WallInsulationChecklist {
  const factory _WallInsulationChecklist(
      {final bool? wallMeasurementsAccurate,
      final bool? drainagePlaneInstalled,
      final bool? sidingPutBack,
      final bool? cornerBracesChecked,
      final bool? blockersChecked}) = _$WallInsulationChecklistImpl;

  factory _WallInsulationChecklist.fromJson(Map<String, dynamic> json) =
      _$WallInsulationChecklistImpl.fromJson;

  @override
  bool? get wallMeasurementsAccurate;
  @override
  bool? get drainagePlaneInstalled;
  @override
  bool? get sidingPutBack;
  @override
  bool? get cornerBracesChecked;
  @override
  bool? get blockersChecked;

  /// Create a copy of WallInsulationChecklist
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WallInsulationChecklistImplCopyWith<_$WallInsulationChecklistImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return _Meta.fromJson(json);
}

/// @nodoc
mixin _$Meta {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this Meta to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetaCopyWith<Meta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaCopyWith<$Res> {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) then) =
      _$MetaCopyWithImpl<$Res, Meta>;
  @useResult
  $Res call({int? status, String? message});
}

/// @nodoc
class _$MetaCopyWithImpl<$Res, $Val extends Meta>
    implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetaImplCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$$MetaImplCopyWith(
          _$MetaImpl value, $Res Function(_$MetaImpl) then) =
      __$$MetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message});
}

/// @nodoc
class __$$MetaImplCopyWithImpl<$Res>
    extends _$MetaCopyWithImpl<$Res, _$MetaImpl>
    implements _$$MetaImplCopyWith<$Res> {
  __$$MetaImplCopyWithImpl(_$MetaImpl _value, $Res Function(_$MetaImpl) _then)
      : super(_value, _then);

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$MetaImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaImpl implements _Meta {
  const _$MetaImpl({this.status, this.message});

  factory _$MetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;

  @override
  String toString() {
    return 'Meta(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      __$$MetaImplCopyWithImpl<_$MetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaImplToJson(
      this,
    );
  }
}

abstract class _Meta implements Meta {
  const factory _Meta({final int? status, final String? message}) = _$MetaImpl;

  factory _Meta.fromJson(Map<String, dynamic> json) = _$MetaImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
