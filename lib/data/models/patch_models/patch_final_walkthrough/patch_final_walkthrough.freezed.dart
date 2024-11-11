// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patch_final_walkthrough.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PatchFinalWalkthroughData _$PatchFinalWalkthroughDataFromJson(
    Map<String, dynamic> json) {
  return _PatchFinalWalkthroughData.fromJson(json);
}

/// @nodoc
mixin _$PatchFinalWalkthroughData {
  FinalWalkthrough get finalWalkthrough => throw _privateConstructorUsedError;

  /// Serializes this PatchFinalWalkthroughData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PatchFinalWalkthroughData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PatchFinalWalkthroughDataCopyWith<PatchFinalWalkthroughData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatchFinalWalkthroughDataCopyWith<$Res> {
  factory $PatchFinalWalkthroughDataCopyWith(PatchFinalWalkthroughData value,
          $Res Function(PatchFinalWalkthroughData) then) =
      _$PatchFinalWalkthroughDataCopyWithImpl<$Res, PatchFinalWalkthroughData>;
  @useResult
  $Res call({FinalWalkthrough finalWalkthrough});

  $FinalWalkthroughCopyWith<$Res> get finalWalkthrough;
}

/// @nodoc
class _$PatchFinalWalkthroughDataCopyWithImpl<$Res,
        $Val extends PatchFinalWalkthroughData>
    implements $PatchFinalWalkthroughDataCopyWith<$Res> {
  _$PatchFinalWalkthroughDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PatchFinalWalkthroughData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? finalWalkthrough = null,
  }) {
    return _then(_value.copyWith(
      finalWalkthrough: null == finalWalkthrough
          ? _value.finalWalkthrough
          : finalWalkthrough // ignore: cast_nullable_to_non_nullable
              as FinalWalkthrough,
    ) as $Val);
  }

  /// Create a copy of PatchFinalWalkthroughData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FinalWalkthroughCopyWith<$Res> get finalWalkthrough {
    return $FinalWalkthroughCopyWith<$Res>(_value.finalWalkthrough, (value) {
      return _then(_value.copyWith(finalWalkthrough: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PatchFinalWalkthroughDataImplCopyWith<$Res>
    implements $PatchFinalWalkthroughDataCopyWith<$Res> {
  factory _$$PatchFinalWalkthroughDataImplCopyWith(
          _$PatchFinalWalkthroughDataImpl value,
          $Res Function(_$PatchFinalWalkthroughDataImpl) then) =
      __$$PatchFinalWalkthroughDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FinalWalkthrough finalWalkthrough});

  @override
  $FinalWalkthroughCopyWith<$Res> get finalWalkthrough;
}

/// @nodoc
class __$$PatchFinalWalkthroughDataImplCopyWithImpl<$Res>
    extends _$PatchFinalWalkthroughDataCopyWithImpl<$Res,
        _$PatchFinalWalkthroughDataImpl>
    implements _$$PatchFinalWalkthroughDataImplCopyWith<$Res> {
  __$$PatchFinalWalkthroughDataImplCopyWithImpl(
      _$PatchFinalWalkthroughDataImpl _value,
      $Res Function(_$PatchFinalWalkthroughDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PatchFinalWalkthroughData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? finalWalkthrough = null,
  }) {
    return _then(_$PatchFinalWalkthroughDataImpl(
      finalWalkthrough: null == finalWalkthrough
          ? _value.finalWalkthrough
          : finalWalkthrough // ignore: cast_nullable_to_non_nullable
              as FinalWalkthrough,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatchFinalWalkthroughDataImpl implements _PatchFinalWalkthroughData {
  const _$PatchFinalWalkthroughDataImpl({required this.finalWalkthrough});

  factory _$PatchFinalWalkthroughDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatchFinalWalkthroughDataImplFromJson(json);

  @override
  final FinalWalkthrough finalWalkthrough;

  @override
  String toString() {
    return 'PatchFinalWalkthroughData(finalWalkthrough: $finalWalkthrough)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatchFinalWalkthroughDataImpl &&
            (identical(other.finalWalkthrough, finalWalkthrough) ||
                other.finalWalkthrough == finalWalkthrough));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, finalWalkthrough);

  /// Create a copy of PatchFinalWalkthroughData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PatchFinalWalkthroughDataImplCopyWith<_$PatchFinalWalkthroughDataImpl>
      get copyWith => __$$PatchFinalWalkthroughDataImplCopyWithImpl<
          _$PatchFinalWalkthroughDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatchFinalWalkthroughDataImplToJson(
      this,
    );
  }
}

abstract class _PatchFinalWalkthroughData implements PatchFinalWalkthroughData {
  const factory _PatchFinalWalkthroughData(
          {required final FinalWalkthrough finalWalkthrough}) =
      _$PatchFinalWalkthroughDataImpl;

  factory _PatchFinalWalkthroughData.fromJson(Map<String, dynamic> json) =
      _$PatchFinalWalkthroughDataImpl.fromJson;

  @override
  FinalWalkthrough get finalWalkthrough;

  /// Create a copy of PatchFinalWalkthroughData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PatchFinalWalkthroughDataImplCopyWith<_$PatchFinalWalkthroughDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
