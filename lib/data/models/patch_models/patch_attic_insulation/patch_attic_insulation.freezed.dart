// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patch_attic_insulation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PatchAtticInsulationData _$PatchAtticInsulationDataFromJson(
    Map<String, dynamic> json) {
  return _PatchAtticInsulationData.fromJson(json);
}

/// @nodoc
mixin _$PatchAtticInsulationData {
  AtticInsulation get atticInsulation => throw _privateConstructorUsedError;

  /// Serializes this PatchAtticInsulationData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PatchAtticInsulationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PatchAtticInsulationDataCopyWith<PatchAtticInsulationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatchAtticInsulationDataCopyWith<$Res> {
  factory $PatchAtticInsulationDataCopyWith(PatchAtticInsulationData value,
          $Res Function(PatchAtticInsulationData) then) =
      _$PatchAtticInsulationDataCopyWithImpl<$Res, PatchAtticInsulationData>;
  @useResult
  $Res call({AtticInsulation atticInsulation});

  $AtticInsulationCopyWith<$Res> get atticInsulation;
}

/// @nodoc
class _$PatchAtticInsulationDataCopyWithImpl<$Res,
        $Val extends PatchAtticInsulationData>
    implements $PatchAtticInsulationDataCopyWith<$Res> {
  _$PatchAtticInsulationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PatchAtticInsulationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? atticInsulation = null,
  }) {
    return _then(_value.copyWith(
      atticInsulation: null == atticInsulation
          ? _value.atticInsulation
          : atticInsulation // ignore: cast_nullable_to_non_nullable
              as AtticInsulation,
    ) as $Val);
  }

  /// Create a copy of PatchAtticInsulationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AtticInsulationCopyWith<$Res> get atticInsulation {
    return $AtticInsulationCopyWith<$Res>(_value.atticInsulation, (value) {
      return _then(_value.copyWith(atticInsulation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PatchAtticInsulationDataImplCopyWith<$Res>
    implements $PatchAtticInsulationDataCopyWith<$Res> {
  factory _$$PatchAtticInsulationDataImplCopyWith(
          _$PatchAtticInsulationDataImpl value,
          $Res Function(_$PatchAtticInsulationDataImpl) then) =
      __$$PatchAtticInsulationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AtticInsulation atticInsulation});

  @override
  $AtticInsulationCopyWith<$Res> get atticInsulation;
}

/// @nodoc
class __$$PatchAtticInsulationDataImplCopyWithImpl<$Res>
    extends _$PatchAtticInsulationDataCopyWithImpl<$Res,
        _$PatchAtticInsulationDataImpl>
    implements _$$PatchAtticInsulationDataImplCopyWith<$Res> {
  __$$PatchAtticInsulationDataImplCopyWithImpl(
      _$PatchAtticInsulationDataImpl _value,
      $Res Function(_$PatchAtticInsulationDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PatchAtticInsulationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? atticInsulation = null,
  }) {
    return _then(_$PatchAtticInsulationDataImpl(
      atticInsulation: null == atticInsulation
          ? _value.atticInsulation
          : atticInsulation // ignore: cast_nullable_to_non_nullable
              as AtticInsulation,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatchAtticInsulationDataImpl implements _PatchAtticInsulationData {
  const _$PatchAtticInsulationDataImpl({required this.atticInsulation});

  factory _$PatchAtticInsulationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatchAtticInsulationDataImplFromJson(json);

  @override
  final AtticInsulation atticInsulation;

  @override
  String toString() {
    return 'PatchAtticInsulationData(atticInsulation: $atticInsulation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatchAtticInsulationDataImpl &&
            (identical(other.atticInsulation, atticInsulation) ||
                other.atticInsulation == atticInsulation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, atticInsulation);

  /// Create a copy of PatchAtticInsulationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PatchAtticInsulationDataImplCopyWith<_$PatchAtticInsulationDataImpl>
      get copyWith => __$$PatchAtticInsulationDataImplCopyWithImpl<
          _$PatchAtticInsulationDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatchAtticInsulationDataImplToJson(
      this,
    );
  }
}

abstract class _PatchAtticInsulationData implements PatchAtticInsulationData {
  const factory _PatchAtticInsulationData(
          {required final AtticInsulation atticInsulation}) =
      _$PatchAtticInsulationDataImpl;

  factory _PatchAtticInsulationData.fromJson(Map<String, dynamic> json) =
      _$PatchAtticInsulationDataImpl.fromJson;

  @override
  AtticInsulation get atticInsulation;

  /// Create a copy of PatchAtticInsulationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PatchAtticInsulationDataImplCopyWith<_$PatchAtticInsulationDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
