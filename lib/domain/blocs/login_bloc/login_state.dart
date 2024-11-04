import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    bool? isLoading,
    bool? loginStatus,
    String? loginErrorMessage,
    String? wrongPwErrorMessage,
  }) = _LoginState;
}
