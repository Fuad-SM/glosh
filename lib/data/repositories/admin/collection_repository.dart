part of '../repository.dart';

class CollectionRepositories {
  static final _dioHelper = DioHelper();
  static Future<Either<String, Collection>> getAllCollection() async {
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
          await _dioHelper.dio().get('/collections', options: options);

      Collection jsonsData = Collection.fromJson(response.data);

      return right(jsonsData);
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
          _message = 'Fetch collection error:$e';
      }
      return left(_message);
    } on SocketException catch (e) {
      return left('No internet connection detected : $e');
    }
  }

  static Future<Either<String, CollectionById>> getCollectionById(
      {required String id}) async {
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
          await _dioHelper.dio().get('/collections/$id', options: options);

      CollectionById jsonsData = CollectionById.fromJson(response.data);

      return right(jsonsData);
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
          _message = 'Fetch collection error:$e';
      }
      return left(_message);
    } on SocketException catch (e) {
      return left('No internet connection detected : $e');
    }
  }

  static Future<Either<String, String>> addCollection(
      {required String title, required String handle}) async {
    final _token = await SecureStorageHelper().readToken();
    final _cookie = await SecureStorageHelper().readCookie();
    final _body = CollectionBody(title: title, handle: handle);

    final options = Options(
      headers: {
        "Authorization": "Bearer $_token",
        "Cookie": "$_cookie",
      },
    );

    try {
      final response = await _dioHelper.dio().post(
            '/collections',
            data: collectionBodyToJson(_body),
            options: options,
          );

      var _responseStatus = response.statusMessage;

      return right('Post Successfully => $_responseStatus');
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
          _message = 'Fetch collection error:$e';
      }
      return left(_message);
    } on SocketException catch (e) {
      return left('No internet connection detected : $e');
    }
  }

  static Future<Either<String, String>> deleteCollectionById(
      {required String id}) async {
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
          await _dioHelper.dio().delete('/collections/$id', options: options);

      var _responseData = jsonDecode(response.toString());
      var _message = _responseData['deleted'];

      return right('Delete Success => $_message');
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
          _message = 'Fetch collection error:$e';
      }
      return left(_message);
    } on SocketException catch (e) {
      return left('No internet connection detected : $e');
    }
  }
}
