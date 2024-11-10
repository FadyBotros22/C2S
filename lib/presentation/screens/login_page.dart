import 'package:c2s/domain/blocs/login_bloc/login_bloc.dart';
import 'package:c2s/domain/blocs/login_bloc/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

import '../../domain/blocs/login_bloc/login_event.dart';
import '../widgets/action_button.dart';
import 'package:c2s/domain/repositories/abstract_auth_repo.dart';
import 'package:c2s/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:c2s/constants.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = '';
  String password = '';
  String errorMessage = '';
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(getIt<AbstractAuthRepository>()),
      child: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) async {
          if (state.loginStatus == true) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
              (route) => false,
            );
          }
        },
        builder: body,
      ),
    );
  }

  Widget body(BuildContext context, state) {
    if ((state as LoginState).loginErrorMessage != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(state.loginErrorMessage!)));
      });
    }

    String title = FlavorConfig.instance.variables["title"];

    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: const Color(0Xfffafafa),
                child: Container(
                  margin: const EdgeInsets.only(left: 16, top: 64),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello,\nWelcome back. $title',
                        style: kAppBarTitleTextStyle,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Please enter your username and password to log in ',
                        style: kAppBarSecondaryTitleTextStyle,
                      ),
                      SizedBox(height: 16)
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 16, right: 16, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    if (state.wrongPwErrorMessage != null)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: Text(
                          state.wrongPwErrorMessage!,
                          style: kErrorMessageTextStyle,
                        ),
                      ),
                    SizedBox(
                      height: 24,
                      child: TextField(
                        decoration: kTextFieldInputDecoration,
                        onChanged: (value) {
                          setState(() {
                            username = value;
                          });
                        },
                      ),
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      height: 24,
                      child: TextField(
                        decoration: kTextFieldInputDecoration.copyWith(
                            hintText: '• • • • • • • •'),
                        onChanged: (value) {
                          setState(() {
                            password = value;
                          });
                        },
                        obscureText: true,
                      ),
                    ),
                    const SizedBox(height: 45),
                    ActionButton(
                        onPressed: () async {
                          FocusScope.of(context).unfocus();
                          await Future.delayed(Duration(milliseconds: 500));
                          if (context.mounted) {
                            context
                                .read<LoginBloc>()
                                .add(LoginButtonClicked(username, password));
                          }
                        },
                        label: 'Login'),
                  ],
                ),
              ),
            ],
          ),
          if (state.isLoading == true)
            const Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}
