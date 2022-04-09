part of 'repository.dart';

class ProductRepositories {
  static Future<Either<String, Product>> getAllProduct() async {
    final _dioHelper = DioHelper();
    final _token = await SecureStorageHelper().readToken();
    final _cookie = await SecureStorageHelper().readCookie();

    final options = Options(
      headers: {
        "Authorization": "Bearer $_token",
        "Cookie": "$_cookie",
      },
    );

    try {
      final response =
          await _dioHelper.dio().get('/products', options: options);

      Product jsonsData = Product.fromJson(response.data);

      return right(jsonsData);
    } on DioError catch (e) {
      String _message = '';
      switch (e.type) {
        case DioErrorType.connectTimeout:
        case DioErrorType.sendTimeout:
        case DioErrorType.receiveTimeout:
          _message = 'The connection has timed out';
          break;
        case DioErrorType.other:
          _message = 'No internet connection detected :$e';
          break;
        case DioErrorType.response:
          switch (e.response!.statusCode) {
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
              _message = 'Fetch product error :$e';
          }
          break;
        default:
          _message = 'Fetch product error:$e';
      }
      return left(_message);
    } on SocketException catch (e) {
      return left('No internet connection detected : $e');
    }
  }
}
