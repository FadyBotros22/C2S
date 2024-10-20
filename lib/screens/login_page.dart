import 'package:c2s/components/action_button.dart';
import 'package:c2s/components/snakbar.dart';
import 'package:flutter/material.dart';
import 'package:c2s/constants.dart';
import 'home_page.dart';
import 'package:c2s/statics/dio.dart';
import 'package:c2s/api_service.dart';
import 'package:c2s/data/user_request_data.dart';
import 'package:c2s/statics/preferences.dart';

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
    if (await fetchUserData(username, password)) {
      errorMessage = '';
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
        (route) => false,
      );
    } else {
      setState(() {
        isLoading = false;
        errorMessage = 'Username or password incorrect, Please try again';
      });
    }
  }

  Future<bool> fetchUserData(String userName, String password) async {
    try {
      ApiService apiService = ApiService(DioClass.getDio());
      UserRequestData userRequest = UserRequestData(
          user: User(userName: userName, password: password),
          device: Device(deviceId: "deviceId", os: "IOS"));

      final fetchedUser = await apiService.login(userRequest);
      (await Preferences.getPreferences())
          .setString("token", fetchedUser.data.authToken);
      (await Preferences.getPreferences()).getString('token');

      // print(token);
      return true;
    } catch (e) {
      Snackbar().showSnackBar(
          context, "Error occurred, try connecting to active Network");
    }
    return false;
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
