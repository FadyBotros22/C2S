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
