import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:shared_preferences/shared_preferences.dart';

final locator = GetIt.I;

void setup() {
  locator.registerSingletonAsync<SharedPreferences>(
      () => SharedPreferences.getInstance());

  locator.registerSingleton<Dio>(
      Dio(BaseOptions(baseUrl: "AppConsts.baseUrl", headers: {})));
}
