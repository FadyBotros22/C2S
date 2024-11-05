// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patch_wall_insulation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PatchWallInsulationData _$PatchWallInsulationDataFromJson(
    Map<String, dynamic> json) {
  return _PatchWallInsulationData.fromJson(json);
}

/// @nodoc
mixin _$PatchWallInsulationData {
  WallInsulation get wallInsulation => throw _privateConstructorUsedError;

  /// Serializes this PatchWallInsulationData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PatchWallInsulationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PatchWallInsulationDataCopyWith<PatchWallInsulationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatchWallInsulationDataCopyWith<$Res> {
  factory $PatchWallInsulationDataCopyWith(PatchWallInsulationData value,
          $Res Function(PatchWallInsulationData) then) =
      _$PatchWallInsulationDataCopyWithImpl<$Res, PatchWallInsulationData>;
  @useResult
  $Res call({WallInsulation wallInsulation});

  $WallInsulationCopyWith<$Res> get wallInsulation;
}

/// @nodoc
class _$PatchWallInsulationDataCopyWithImpl<$Res,
        $Val extends PatchWallInsulationData>
    implements $PatchWallInsulationDataCopyWith<$Res> {
  _$PatchWallInsulationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PatchWallInsulationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wallInsulation = null,
  }) {
    return _then(_value.copyWith(
      wallInsulation: null == wallInsulation
          ? _value.wallInsulation
          : wallInsulation // ignore: cast_nullable_to_non_nullable
              as WallInsulation,
    ) as $Val);
  }

  /// Create a copy of PatchWallInsulationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WallInsulationCopyWith<$Res> get wallInsulation {
    return $WallInsulationCopyWith<$Res>(_value.wallInsulation, (value) {
      return _then(_value.copyWith(wallInsulation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PatchWallInsulationDataImplCopyWith<$Res>
    implements $PatchWallInsulationDataCopyWith<$Res> {
  factory _$$PatchWallInsulationDataImplCopyWith(
          _$PatchWallInsulationDataImpl value,
          $Res Function(_$PatchWallInsulationDataImpl) then) =
      __$$PatchWallInsulationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WallInsulation wallInsulation});

  @override
  $WallInsulationCopyWith<$Res> get wallInsulation;
}

/// @nodoc
class __$$PatchWallInsulationDataImplCopyWithImpl<$Res>
    extends _$PatchWallInsulationDataCopyWithImpl<$Res,
        _$PatchWallInsulationDataImpl>
    implements _$$PatchWallInsulationDataImplCopyWith<$Res> {
  __$$PatchWallInsulationDataImplCopyWithImpl(
      _$PatchWallInsulationDataImpl _value,
      $Res Function(_$PatchWallInsulationDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PatchWallInsulationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wallInsulation = null,
  }) {
    return _then(_$PatchWallInsulationDataImpl(
      wallInsulation: null == wallInsulation
          ? _value.wallInsulation
          : wallInsulation // ignore: cast_nullable_to_non_nullable
              as WallInsulation,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatchWallInsulationDataImpl implements _PatchWallInsulationData {
  const _$PatchWallInsulationDataImpl({required this.wallInsulation});

  factory _$PatchWallInsulationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatchWallInsulationDataImplFromJson(json);

  @override
  final WallInsulation wallInsulation;

  @override
  String toString() {
    return 'PatchWallInsulationData(wallInsulation: $wallInsulation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatchWallInsulationDataImpl &&
            (identical(other.wallInsulation, wallInsulation) ||
                other.wallInsulation == wallInsulation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, wallInsulation);

  /// Create a copy of PatchWallInsulationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PatchWallInsulationDataImplCopyWith<_$PatchWallInsulationDataImpl>
      get copyWith => __$$PatchWallInsulationDataImplCopyWithImpl<
          _$PatchWallInsulationDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatchWallInsulationDataImplToJson(
      this,
    );
  }
}

abstract class _PatchWallInsulationData implements PatchWallInsulationData {
  const factory _PatchWallInsulationData(
          {required final WallInsulation wallInsulation}) =
      _$PatchWallInsulationDataImpl;

  factory _PatchWallInsulationData.fromJson(Map<String, dynamic> json) =
      _$PatchWallInsulationDataImpl.fromJson;

  @override
  WallInsulation get wallInsulation;

  /// Create a copy of PatchWallInsulationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PatchWallInsulationDataImplCopyWith<_$PatchWallInsulationDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
