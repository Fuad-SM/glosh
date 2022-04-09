import 'package:dio/dio.dart';
import 'package:glosh/core/app_environment.dart';

class DioHelper {
  Dio dio() {
    return Dio(
      BaseOptions(
        baseUrl: AppEnvironment.baseUrl,
        headers: {
          'accept': 'application/json',
          'Content-type': 'application/json',
        },
      ),
    );
  }
}
