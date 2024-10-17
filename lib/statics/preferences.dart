import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static Future<SharedPreferences> getPreferences() async {
    return SharedPreferences.getInstance();
  }
}
