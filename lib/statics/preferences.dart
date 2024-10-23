import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  final SharedPreferences prefs;

  Preferences(this.prefs);

  void saveData(String key, String value) {
    prefs.setString(key, value);
  }

  String? getData(String key) {
    return prefs.getString(key);
  }
}
