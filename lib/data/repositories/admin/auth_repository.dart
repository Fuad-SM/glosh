import 'dart:convert';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:glosh/core/app_environment.dart';
import 'package:glosh/core/core.dart';
import 'package:glosh/data/model/admin/auth_body.dart';

class UserRepositories {
  static final Dio dio = Dio(BaseOptions(
    baseUrl: AppEnvironment.baseUrl,
  ));

  static Future<Either<String, String>> login(
      {required String email, required String password}) async {
    final body = AuthBody(email: email, password: password);

    Response? response;
    Options options = Options(headers: {
      "Content-Type": "application/json",
      "Authorization": "Bearer  "
    });

    try {
      response = await dio.post(
        'http://mobileapi.cilsy.id:9000/admin/auth',
        options: options,
        data: authBodyToJson(body),
      );

      var _token = jsonDecode(response.toString())['api_token'];
      SecureStorageHelper().saveToken(_token);

      return right("login sukses, token = $_token");
    } on DioError catch (e) {
      String _message = '';
      switch (e.type) {
        case DioErrorType.connectTimeout:
        case DioErrorType.sendTimeout:
        case DioErrorType.receiveTimeout:
          _message = 'The connection has timed out';
          break;
        case DioErrorType.other:
          _message = 'No internet connection detected';
          break;
        case DioErrorType.response:
          switch (e.response!.statusCode) {
            case 400:
            case 401:
            case 403:
              _message = 'Access denied';
              break;
            case 404:
              _message = 'The requested information could not be found';
              break;
            case 408:
              _message = 'The connection has timed out';
              break;
            case 500:
            case 503:
              _message = 'Unknown error occurred, please try again later.';
              break;
            default:
              _message = 'Login Failed :$e';
          }
          break;
        default:
          _message = 'Login Failed: $e';
      }
      print(_message);
      return left(_message);
    } on SocketException catch (e) {
      return left('No internet connection detected : $e');
    }
  }
}
