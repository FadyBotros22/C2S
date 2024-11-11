// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_entries_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EntriesResponseData _$EntriesResponseDataFromJson(Map<String, dynamic> json) {
  return _EntriesResponseData.fromJson(json);
}

/// @nodoc
mixin _$EntriesResponseData {
  Meta get meta => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;

  /// Serializes this EntriesResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EntriesResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EntriesResponseDataCopyWith<EntriesResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntriesResponseDataCopyWith<$Res> {
  factory $EntriesResponseDataCopyWith(
          EntriesResponseData value, $Res Function(EntriesResponseData) then) =
      _$EntriesResponseDataCopyWithImpl<$Res, EntriesResponseData>;
  @useResult
  $Res call({Meta meta, Data data});

  $MetaCopyWith<$Res> get meta;
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$EntriesResponseDataCopyWithImpl<$Res, $Val extends EntriesResponseData>
    implements $EntriesResponseDataCopyWith<$Res> {
  _$EntriesResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EntriesResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ) as $Val);
  }

  /// Create a copy of EntriesResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res> get meta {
    return $MetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }

  /// Create a copy of EntriesResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EntriesResponseDataImplCopyWith<$Res>
    implements $EntriesResponseDataCopyWith<$Res> {
  factory _$$EntriesResponseDataImplCopyWith(_$EntriesResponseDataImpl value,
          $Res Function(_$EntriesResponseDataImpl) then) =
      __$$EntriesResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Meta meta, Data data});

  @override
  $MetaCopyWith<$Res> get meta;
  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$EntriesResponseDataImplCopyWithImpl<$Res>
    extends _$EntriesResponseDataCopyWithImpl<$Res, _$EntriesResponseDataImpl>
    implements _$$EntriesResponseDataImplCopyWith<$Res> {
  __$$EntriesResponseDataImplCopyWithImpl(_$EntriesResponseDataImpl _value,
      $Res Function(_$EntriesResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of EntriesResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = null,
    Object? data = null,
  }) {
    return _then(_$EntriesResponseDataImpl(
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EntriesResponseDataImpl implements _EntriesResponseData {
  const _$EntriesResponseDataImpl({required this.meta, required this.data});

  factory _$EntriesResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$EntriesResponseDataImplFromJson(json);

  @override
  final Meta meta;
  @override
  final Data data;

  @override
  String toString() {
    return 'EntriesResponseData(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntriesResponseDataImpl &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, meta, data);

  /// Create a copy of EntriesResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EntriesResponseDataImplCopyWith<_$EntriesResponseDataImpl> get copyWith =>
      __$$EntriesResponseDataImplCopyWithImpl<_$EntriesResponseDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EntriesResponseDataImplToJson(
      this,
    );
  }
}

abstract class _EntriesResponseData implements EntriesResponseData {
  const factory _EntriesResponseData(
      {required final Meta meta,
      required final Data data}) = _$EntriesResponseDataImpl;

  factory _EntriesResponseData.fromJson(Map<String, dynamic> json) =
      _$EntriesResponseDataImpl.fromJson;

  @override
  Meta get meta;
  @override
  Data get data;

  /// Create a copy of EntriesResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EntriesResponseDataImplCopyWith<_$EntriesResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
