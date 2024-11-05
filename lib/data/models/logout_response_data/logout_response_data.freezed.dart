// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logout_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LogoutResponseData _$LogoutResponseDataFromJson(Map<String, dynamic> json) {
  return _LogoutResponseData.fromJson(json);
}

/// @nodoc
mixin _$LogoutResponseData {
  Meta get meta => throw _privateConstructorUsedError;

  /// Serializes this LogoutResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LogoutResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LogoutResponseDataCopyWith<LogoutResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoutResponseDataCopyWith<$Res> {
  factory $LogoutResponseDataCopyWith(
          LogoutResponseData value, $Res Function(LogoutResponseData) then) =
      _$LogoutResponseDataCopyWithImpl<$Res, LogoutResponseData>;
  @useResult
  $Res call({Meta meta});

  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$LogoutResponseDataCopyWithImpl<$Res, $Val extends LogoutResponseData>
    implements $LogoutResponseDataCopyWith<$Res> {
  _$LogoutResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LogoutResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ) as $Val);
  }

  /// Create a copy of LogoutResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res> get meta {
    return $MetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LogoutResponseDataImplCopyWith<$Res>
    implements $LogoutResponseDataCopyWith<$Res> {
  factory _$$LogoutResponseDataImplCopyWith(_$LogoutResponseDataImpl value,
          $Res Function(_$LogoutResponseDataImpl) then) =
      __$$LogoutResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Meta meta});

  @override
  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$LogoutResponseDataImplCopyWithImpl<$Res>
    extends _$LogoutResponseDataCopyWithImpl<$Res, _$LogoutResponseDataImpl>
    implements _$$LogoutResponseDataImplCopyWith<$Res> {
  __$$LogoutResponseDataImplCopyWithImpl(_$LogoutResponseDataImpl _value,
      $Res Function(_$LogoutResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of LogoutResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = null,
  }) {
    return _then(_$LogoutResponseDataImpl(
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LogoutResponseDataImpl implements _LogoutResponseData {
  const _$LogoutResponseDataImpl({required this.meta});

  factory _$LogoutResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LogoutResponseDataImplFromJson(json);

  @override
  final Meta meta;

  @override
  String toString() {
    return 'LogoutResponseData(meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutResponseDataImpl &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, meta);

  /// Create a copy of LogoutResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LogoutResponseDataImplCopyWith<_$LogoutResponseDataImpl> get copyWith =>
      __$$LogoutResponseDataImplCopyWithImpl<_$LogoutResponseDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LogoutResponseDataImplToJson(
      this,
    );
  }
}

abstract class _LogoutResponseData implements LogoutResponseData {
  const factory _LogoutResponseData({required final Meta meta}) =
      _$LogoutResponseDataImpl;

  factory _LogoutResponseData.fromJson(Map<String, dynamic> json) =
      _$LogoutResponseDataImpl.fromJson;

  @override
  Meta get meta;

  /// Create a copy of LogoutResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LogoutResponseDataImplCopyWith<_$LogoutResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
