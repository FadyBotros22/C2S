// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_entries_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostEntriesResponseData _$PostEntriesResponseDataFromJson(
    Map<String, dynamic> json) {
  return _PostEntriesResponseData.fromJson(json);
}

/// @nodoc
mixin _$PostEntriesResponseData {
  Meta get meta => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;

  /// Serializes this PostEntriesResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostEntriesResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostEntriesResponseDataCopyWith<PostEntriesResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostEntriesResponseDataCopyWith<$Res> {
  factory $PostEntriesResponseDataCopyWith(PostEntriesResponseData value,
          $Res Function(PostEntriesResponseData) then) =
      _$PostEntriesResponseDataCopyWithImpl<$Res, PostEntriesResponseData>;
  @useResult
  $Res call({Meta meta, Data data});

  $MetaCopyWith<$Res> get meta;
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$PostEntriesResponseDataCopyWithImpl<$Res,
        $Val extends PostEntriesResponseData>
    implements $PostEntriesResponseDataCopyWith<$Res> {
  _$PostEntriesResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostEntriesResponseData
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

  /// Create a copy of PostEntriesResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res> get meta {
    return $MetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }

  /// Create a copy of PostEntriesResponseData
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
abstract class _$$PostEntriesResponseDataImplCopyWith<$Res>
    implements $PostEntriesResponseDataCopyWith<$Res> {
  factory _$$PostEntriesResponseDataImplCopyWith(
          _$PostEntriesResponseDataImpl value,
          $Res Function(_$PostEntriesResponseDataImpl) then) =
      __$$PostEntriesResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Meta meta, Data data});

  @override
  $MetaCopyWith<$Res> get meta;
  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$PostEntriesResponseDataImplCopyWithImpl<$Res>
    extends _$PostEntriesResponseDataCopyWithImpl<$Res,
        _$PostEntriesResponseDataImpl>
    implements _$$PostEntriesResponseDataImplCopyWith<$Res> {
  __$$PostEntriesResponseDataImplCopyWithImpl(
      _$PostEntriesResponseDataImpl _value,
      $Res Function(_$PostEntriesResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostEntriesResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = null,
    Object? data = null,
  }) {
    return _then(_$PostEntriesResponseDataImpl(
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
class _$PostEntriesResponseDataImpl implements _PostEntriesResponseData {
  const _$PostEntriesResponseDataImpl({required this.meta, required this.data});

  factory _$PostEntriesResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostEntriesResponseDataImplFromJson(json);

  @override
  final Meta meta;
  @override
  final Data data;

  @override
  String toString() {
    return 'PostEntriesResponseData(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostEntriesResponseDataImpl &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, meta, data);

  /// Create a copy of PostEntriesResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostEntriesResponseDataImplCopyWith<_$PostEntriesResponseDataImpl>
      get copyWith => __$$PostEntriesResponseDataImplCopyWithImpl<
          _$PostEntriesResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostEntriesResponseDataImplToJson(
      this,
    );
  }
}

abstract class _PostEntriesResponseData implements PostEntriesResponseData {
  const factory _PostEntriesResponseData(
      {required final Meta meta,
      required final Data data}) = _$PostEntriesResponseDataImpl;

  factory _PostEntriesResponseData.fromJson(Map<String, dynamic> json) =
      _$PostEntriesResponseDataImpl.fromJson;

  @override
  Meta get meta;
  @override
  Data get data;

  /// Create a copy of PostEntriesResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostEntriesResponseDataImplCopyWith<_$PostEntriesResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
