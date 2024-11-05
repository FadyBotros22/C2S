import 'package:c2s/data/remote/api_service.dart';
import 'package:c2s/domain/repositories/abstract_auth_repo.dart';
import 'package:c2s/injection_container.dart';
import 'package:dio/dio.dart';
import '../../statics/preferences.dart';
import 'package:c2s/data/models/user_models/request_user/user_request_data/user_request_data.dart';
import 'package:c2s/data/models/user_models/request_user/user/user.dart';
import 'package:c2s/data/models/user_models/request_user/device/device.dart';

class AuthRepoImpl implements AbstractAuthRepository {
  final ApiService _apiService;

  AuthRepoImpl(this._apiService);

  @override
  Future<String> login(String userName, String password) async {
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
      }
      return "";
    }
  }

  @override
  Future<void> logout() async {
    var token = getIt<Preferences>().getData('token').toString();
    getIt<Preferences>().saveData('token', '');
    await _apiService.logout(token);
  }
}
