import 'package:c2s/data/remote/api_service.dart';
import 'package:c2s/domain/repositories/abstract_auth_repo.dart';
import 'package:c2s/injection_container.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../../components/snakbar.dart';
import '../../statics/preferences.dart';
import '../json_data/user_request_data.dart';

class AuthRepoImpl implements AbstractAuthRepository {
  final ApiService _apiService;

  AuthRepoImpl(this._apiService);

  @override
  Future<String> login(
      String userName, String password, BuildContext context) async {
    try {
      UserRequestData user = UserRequestData(
          user: User(userName: userName, password: password),
          device: Device(deviceId: "deviceId", os: "IOS"));

      final fetchedUser = await _apiService.login(user);
      getIt<Preferences>().saveData('token', fetchedUser.data.authToken);

      return "true";
    } on DioException catch (e) {
      if (e.type == DioExceptionType.badResponse) {
        return "false";
      } else if (e.type == DioExceptionType.connectionError) {
        Snackbar().showSnackBar(context, "Network error");
      } else {
        Snackbar().showSnackBar(context, "unknown error");
      }
      return "";
    }
  }

  @override
  Future<void> logout(context) async {
    try {
      var token = getIt<Preferences>().getData('token').toString();
      await _apiService.logout(token);
    } catch (e) {
      Snackbar().showSnackBar(
          context, "Error occurred, try connecting to active Network");
    }
  }
}
