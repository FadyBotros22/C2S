// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  bool? get isLoading => throw _privateConstructorUsedError;
  String? get loadingErrMessage => throw _privateConstructorUsedError;
  EntriesResponseData? get entriesResponse =>
      throw _privateConstructorUsedError;
  bool? get isEmpty => throw _privateConstructorUsedError;
  bool? get isLogout => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {bool? isLoading,
      String? loadingErrMessage,
      EntriesResponseData? entriesResponse,
      bool? isEmpty,
      bool? isLogout});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = freezed,
    Object? loadingErrMessage = freezed,
    Object? entriesResponse = freezed,
    Object? isEmpty = freezed,
    Object? isLogout = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      loadingErrMessage: freezed == loadingErrMessage
          ? _value.loadingErrMessage
          : loadingErrMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      entriesResponse: freezed == entriesResponse
          ? _value.entriesResponse
          : entriesResponse // ignore: cast_nullable_to_non_nullable
              as EntriesResponseData?,
      isEmpty: freezed == isEmpty
          ? _value.isEmpty
          : isEmpty // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLogout: freezed == isLogout
          ? _value.isLogout
          : isLogout // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? isLoading,
      String? loadingErrMessage,
      EntriesResponseData? entriesResponse,
      bool? isEmpty,
      bool? isLogout});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = freezed,
    Object? loadingErrMessage = freezed,
    Object? entriesResponse = freezed,
    Object? isEmpty = freezed,
    Object? isLogout = freezed,
  }) {
    return _then(_$HomeStateImpl(
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      loadingErrMessage: freezed == loadingErrMessage
          ? _value.loadingErrMessage
          : loadingErrMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      entriesResponse: freezed == entriesResponse
          ? _value.entriesResponse
          : entriesResponse // ignore: cast_nullable_to_non_nullable
              as EntriesResponseData?,
      isEmpty: freezed == isEmpty
          ? _value.isEmpty
          : isEmpty // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLogout: freezed == isLogout
          ? _value.isLogout
          : isLogout // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {this.isLoading,
      this.loadingErrMessage,
      this.entriesResponse,
      this.isEmpty,
      this.isLogout});

  @override
  final bool? isLoading;
  @override
  final String? loadingErrMessage;
  @override
  final EntriesResponseData? entriesResponse;
  @override
  final bool? isEmpty;
  @override
  final bool? isLogout;

  @override
  String toString() {
    return 'HomeState(isLoading: $isLoading, loadingErrMessage: $loadingErrMessage, entriesResponse: $entriesResponse, isEmpty: $isEmpty, isLogout: $isLogout)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.loadingErrMessage, loadingErrMessage) ||
                other.loadingErrMessage == loadingErrMessage) &&
            (identical(other.entriesResponse, entriesResponse) ||
                other.entriesResponse == entriesResponse) &&
            (identical(other.isEmpty, isEmpty) || other.isEmpty == isEmpty) &&
            (identical(other.isLogout, isLogout) ||
                other.isLogout == isLogout));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, loadingErrMessage,
      entriesResponse, isEmpty, isLogout);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final bool? isLoading,
      final String? loadingErrMessage,
      final EntriesResponseData? entriesResponse,
      final bool? isEmpty,
      final bool? isLogout}) = _$HomeStateImpl;

  @override
  bool? get isLoading;
  @override
  String? get loadingErrMessage;
  @override
  EntriesResponseData? get entriesResponse;
  @override
  bool? get isEmpty;
  @override
  bool? get isLogout;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
