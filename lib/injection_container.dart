import 'package:c2s/data/repositories/auth_repo_impl.dart';
import 'package:c2s/data/repositories/get_entries_repo_impl.dart';
import 'package:c2s/data/repositories/post_entry_impl.dart';
import 'package:c2s/domain/repositories/abstract_auth_repo.dart';
import 'package:c2s/domain/repositories/abstract_get_entries_repo.dart';
import 'package:c2s/domain/repositories/abstract_post_entry_repo.dart';
import 'package:c2s/statics/dio.dart';
import 'package:c2s/statics/preferences.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'data/remote/api_service.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  final dio = DioClass();
  getIt.registerSingleton<DioClass>(dio);

  getIt.registerSingleton<ApiService>(ApiService(getIt<DioClass>().getDio()));

  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerSingleton<Preferences>(Preferences(sharedPreferences));

  getIt.registerSingleton<AbstractAuthRepository>(
      AuthRepoImpl(getIt<ApiService>()));

  getIt.registerSingleton<AbstractGetEntriesRepo>(
      GetEntriesRepoImpl(getIt<ApiService>()));

  getIt.registerSingleton<AbstractPostEntryRepo>(
      PostEntryRepoImpl(getIt<ApiService>()));
}
