abstract class LoginEvent {}

class LoginButtonClicked extends LoginEvent {
  String userName;
  String pw;
  LoginButtonClicked(this.userName, this.pw);
}
