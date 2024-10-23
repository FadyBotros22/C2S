import 'package:c2s/statics/dio.dart';
import 'package:c2s/statics/preferences.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'api_service.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  final dio = DioClass();
  getIt.registerSingleton<DioClass>(dio);

  getIt.registerSingleton<ApiService>(ApiService(getIt<DioClass>().getDio()));

  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerSingleton<Preferences>(Preferences(sharedPreferences));
}
