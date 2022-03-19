import 'dart:convert';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:glosh/core/app_environment.dart';
import 'package:glosh/core/core.dart';
import 'package:glosh/data/model/admin/auth_body.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cookie_jar/cookie_jar.dart';

class UserRepositories {
  static Future<Either<String, String>> login(
      {required String email, required String password}) async {
    final dio = Dio(BaseOptions(baseUrl: AppEnvironment.baseUrl));
    // final dio = Dio(
    //   BaseOptions(baseUrl: 'http://mobileapi.cilsy.id:9000/admin'),
    // );
    final cookieJar = CookieJar();
    final body = AuthBody(email: email, password: password);

    Response? response;
    Options options = Options(headers: {
      "Content-Type": "application/json",
      "Accept": "application/json",
    });

    dio.interceptors.add(CookieManager(cookieJar));

    try {
      response = await dio.post(
        '/auth',
        options: options,
        data: authBodyToJson(body),
      );

      // Save Token
      var _responseData = jsonDecode(response.toString());
      var _token = _responseData['api_token'];
      SecureStorageHelper().saveToken(_token);

      // Save Cookie
      var _loadCookie = await cookieJar.loadForRequest(
        Uri.parse(AppEnvironment.baseUrl + '/auth'),
      );
      var _cookie = convertCookieToString(_loadCookie);
      SecureStorageHelper().saveCookie(_cookie);

      return right("login sukses, token = $_token dan cookie = $_cookie");
    } on DioError catch (e) {
      String _message = '';
      switch (e.type) {
        case DioErrorType.connectTimeout:
        case DioErrorType.sendTimeout:
        case DioErrorType.receiveTimeout:
          _message = 'The connection has timed out';
          break;
        case DioErrorType.other:
          _message = 'No internet connection detected $e';
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
