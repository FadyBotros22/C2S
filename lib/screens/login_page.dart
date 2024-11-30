import 'dart:io';

import 'package:c2s/components/action_button.dart';
import 'package:c2s/components/snakbar.dart';
import 'package:c2s/statics/preferences.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:c2s/constants.dart';
import '../injection_container.dart';
import 'home_page.dart';
import 'package:c2s/api_service.dart';
import 'package:c2s/data/user_request_data.dart';

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

  void login() async {
    setState(() {
      isLoading = true;
    });
    String status = await fetchUserData(username, password);
    if (status == 'true' && mounted) {
      errorMessage = '';
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
        (route) => false,
      );
    } else if (status == "false") {
      errorMessage = 'Username or password incorrect, Please try again';
    }
    setState(() {
      isLoading = false;
    });
  }

  Future<String> fetchUserData(String userName, String password) async {
    try {
      // ApiService apiService = ApiService(DioClass.getDio());
      UserRequestData userRequest = UserRequestData(
          user: User(userName: userName, password: password),
          device: Device(deviceId: "deviceId", os: "IOS"));

      final fetchedUser = await getIt<ApiService>().login(userRequest);
      getIt<Preferences>().saveData('token', fetchedUser.data.authToken);

      return "true";
    } on SocketException catch (_) {
      if (mounted) {
        Snackbar().showSnackBar(context, 'socket error');
      }
      return "";
    } on DioException catch (e) {
      if (e.type == DioExceptionType.badResponse) {
        return "false";
      } else if (e.type == DioExceptionType.connectionError && mounted) {
        Snackbar().showSnackBar(context, "Network error");
      } else if (mounted) {
        Snackbar().showSnackBar(context, "unknown error");
      }
      return "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: const Color(0Xfffafafa),
                child: Container(
                  margin: const EdgeInsets.only(left: 16, top: 64),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello,\nWelcome back.',
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
                    if (errorMessage.isNotEmpty)
                      Text(
                        errorMessage,
                        style: kErrorMessageTextStyle,
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
                    ActionButton(onPressed: login, label: 'Login'),
                  ],
                ),
              ),
            ],
          ),
          if (isLoading) const Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}
