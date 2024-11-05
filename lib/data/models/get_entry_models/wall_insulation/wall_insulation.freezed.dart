// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wall_insulation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
