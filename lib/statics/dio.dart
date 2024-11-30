import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioClass {
  final dio = Dio();
  Dio getDio() {
    dio.interceptors.add(PrettyDioLogger());
    return dio;
  }
}
