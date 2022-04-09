part of 'repository.dart';

class UserRepositories {
  static final _dioHelper = DioHelper();
  static Future<Either<String, String>> login(
      {required String email, required String password}) async {
    final dio = Dio(BaseOptions(baseUrl: AppEnvironment.baseUrl));

    Response? response;
    Options options = Options(headers: {
      "Content-Type": "application/json",
      "Accept": "application/json",
    });
    final cookieJar = CookieJar();
    final body = AuthBody(email: email, password: password);

    dio.interceptors.add(CookieManager(cookieJar));

    try {
      response =
          await dio.post('/auth', data: authBodyToJson(body), options: options);

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

  static Future<Either<String, String>> logout() async {
    try {
      final response = await _dioHelper.dio().delete('/auth');

      var status = response.statusCode;
      var message = response.statusMessage;

      var email = await PreferencesHelper().getEmail();

      return right(
          "logout sukses, status $status , message = $message , email = $email");
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
              _message = 'Logout Failed :$e';
          }
          break;
        default:
          _message = 'Logout Failed: $e';
      }
      print(_message);
      return left(_message);
    } on SocketException catch (e) {
      return left('No internet connection detected : $e');
    }
  }
}
