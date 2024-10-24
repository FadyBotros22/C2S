import 'package:flutter/cupertino.dart';

abstract class AbstractAuthRepository {
  Future<String> login(String userName, String password, BuildContext context);
  Future<void> logout(BuildContext context);
}
