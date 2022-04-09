part of '../repository.dart';

class CustomerRepositories {
  static final _dioHelper = DioHelper();
  static Future<Either<String, String>> createUser({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  }) async {
    final body = CreateCustomer(
      email: email,
      password: password,
      firstName: firstName,
      lastName: lastName,
    );
    Options options = Options(headers: {
      "Content-Type": "application/json",
      "Accept": "application/json",
    });

    try {
      final response = await _dioHelper.dio().post(
            '/customers',
            options: options,
            data: createCustomerToJson(body),
          );

      return right('${response.statusMessage}');
    } on DioError catch (e) {
      String _message = '';
      switch (e.type) {
        case DioErrorType.connectTimeout:
        case DioErrorType.sendTimeout:
        case DioErrorType.receiveTimeout:
          _message = 'The connection has timed out';
          break;
        // case DioErrorType.other:
        //   _message = 'No internet connection detected :$e';
        //   break;
        // case DioErrorType.response:
        //   switch (e.response!.statusCode) {
        //     case 401:
        //     case 403:
        //       _message = 'Access denied';
        //       break;
        //     case 404:
        //       _message = 'The requested information could not be found';
        //       break;
        //     case 408:
        //       _message = 'The connection has timed out';
        //       break;
        //     case 500:
        //     case 503:
        //       _message = 'Unknown error occurred, please try again later.';
        //       break;
        //     default:
        //       _message = 'Fetch product error :$e';
        //   }
        //   break;
        default:
          _message = 'Create User Failed:$e';
      }
      return left(_message);
    } on SocketException catch (e) {
      return left('No internet connection detected : $e');
    }
  }

  static Future<Either<String, Customer>> getUser() async {
    final _token = await SecureStorageHelper().readToken();
    final _cookie = await SecureStorageHelper().readCookie();

    final options = Options(
      headers: {
        "Authorization": "Bearer $_token",
        "Cookie": "$_cookie",
      },
    );

    try {
      final response = await _dioHelper.dio().get(
            '/customers/me',
            options: options,
          );

      Customer jsonData = Customer.fromJson(response.data);

      return right(jsonData);
    } on DioError catch (e) {
      String _message = '';
      switch (e.type) {
        case DioErrorType.connectTimeout:
        case DioErrorType.sendTimeout:
        case DioErrorType.receiveTimeout:
          _message = 'The connection has timed out';
          break;
        // case DioErrorType.other:
        //   _message = 'No internet connection detected :$e';
        //   break;
        // case DioErrorType.response:
        //   switch (e.response!.statusCode) {
        //     case 401:
        //     case 403:
        //       _message = 'Access denied';
        //       break;
        //     case 404:
        //       _message = 'The requested information could not be found';
        //       break;
        //     case 408:
        //       _message = 'The connection has timed out';
        //       break;
        //     case 500:
        //     case 503:
        //       _message = 'Unknown error occurred, please try again later.';
        //       break;
        //     default:
        //       _message = 'Fetch product error :$e';
        //   }
        //   break;
        default:
          _message = 'Fetch User Failed:$e';
      }
      return left(_message);
    } on SocketException catch (e) {
      return left('No internet connection detected : $e');
    }
  }

  static Future<Either<String, String>> updateUser({
    required String password,
    required String firstName,
    required String lastName,
    required String phone,
  }) async {
    final body = UpdateCustomer(
        password: password,
        firstName: firstName,
        lastName: lastName,
        phone: phone);

    Options options = Options(headers: {
      "Content-Type": "application/json",
      "Accept": "application/json",
    });

    try {
      final response = await _dioHelper.dio().post(
            '/customers',
            options: options,
            data: updateCustomerToJson(body),
          );

      return right('${response.statusMessage}');
    } on DioError catch (e) {
      String _message = '';
      switch (e.type) {
        case DioErrorType.connectTimeout:
        case DioErrorType.sendTimeout:
        case DioErrorType.receiveTimeout:
          _message = 'The connection has timed out';
          break;
        // case DioErrorType.other:
        //   _message = 'No internet connection detected :$e';
        //   break;
        // case DioErrorType.response:
        //   switch (e.response!.statusCode) {
        //     case 401:
        //     case 403:
        //       _message = 'Access denied';
        //       break;
        //     case 404:
        //       _message = 'The requested information could not be found';
        //       break;
        //     case 408:
        //       _message = 'The connection has timed out';
        //       break;
        //     case 500:
        //     case 503:
        //       _message = 'Unknown error occurred, please try again later.';
        //       break;
        //     default:
        //       _message = 'Fetch product error :$e';
        //   }
        //   break;
        default:
          _message = 'Update User Failed:$e';
      }
      return left(_message);
    } on SocketException catch (e) {
      return left('No internet connection detected : $e');
    }
  }
}
