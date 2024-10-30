abstract class LoginState {}

class InitialState extends LoginState {}

class Loading extends LoginState {}

class LoginError extends LoginState {
  final String message;
  LoginError(this.message);
}

class WrongPassword extends LoginState {
  final String message;
  WrongPassword(this.message);
}

class CorrectPassword extends LoginState {}
