import 'package:c2s/domain/repositories/abstract_auth_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AbstractAuthRepository repository;

  LoginBloc(this.repository) : super(LoginState()) {
    on<LoginButtonClicked>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      bool? status = await repository.login(event.userName, event.pw);

      if (status == true) {
        emit(state.copyWith(
          loginStatus: true,
          wrongPwErrorMessage: null,
        ));
      } else if (status == false) {
        emit(state.copyWith(
            wrongPwErrorMessage:
                'Username or password incorrect, Please try again'));
      } else {
        emit(state.copyWith(
            loginErrorMessage: 'Internet Error, Connect to an active Network'));
      }
      await Future.delayed(Duration(milliseconds: 500));
      emit(state.copyWith(loginErrorMessage: null, isLoading: false));
    });
  }
}
