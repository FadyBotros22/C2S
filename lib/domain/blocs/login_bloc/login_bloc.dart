import 'package:c2s/domain/repositories/abstract_auth_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AbstractAuthRepository repository;

  LoginBloc(this.repository) : super(InitialState()) {
    on<LoginButtonClicked>((event, emit) async {
      emit(Loading());
      // String status = await repository.login(event.userName, event.pw);
      String status = await repository.login('ismail', '12345678');

      if (status == 'true') {
        emit(CorrectPassword());
      } else if (status == 'false') {
        emit(WrongPassword('Username or password incorrect, Please try again'));
      } else {
        emit(LoginError('Internet Error, Connect to an active Network'));
      }
    });
  }
  @override
  void onChange(Change<LoginState> change) {
    super.onChange(change);
    print(change);
  }
}
