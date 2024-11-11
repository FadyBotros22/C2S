// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'air_sealing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
