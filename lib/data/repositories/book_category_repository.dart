import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:glosh/data/model/book_category.dart';

class BookCategoryRepositories {
  static Future<Either<String, List<BookCategory>>> getAllCategory() async {
    Dio dio = Dio();

    try {
      Response response = await dio
          .get("https://mocki.io/v1/131205d8-a54e-4a4e-9dcf-03c6f1376cea");

      List jsonsData = response.data;
      print(jsonsData);
      List<BookCategory> listCategory =
          jsonsData.map((item) => BookCategory.fromJson(item)).toList();

      return right(listCategory);
    } on DioError catch (e) {
      String _message = '';
      switch (e.type) {
        case DioErrorType.connectTimeout:
          _message = 'Timeout: $e';
          break;
        case DioErrorType.sendTimeout:
          _message = 'Timeout: $e';
          break;
        case DioErrorType.receiveTimeout:
          _message = 'Timeout: $e';
          break;
        case DioErrorType.response:
          switch (e.response!.statusCode) {
            case 401:
              _message = 'Error Unauthorized';
              break;
            case 403:
              _message = 'Error Forbidden';
              break;
            case 404:
              _message = 'Server Not Found';
              break;
            case 408:
              _message = 'Request Timeout';
              break;
            case 500:
              _message = 'Internal Server Error';
              break;
            case 503:
              _message = 'Service Unavailable';
              break;
            default:
              _message = 'Fetch Book error';
          }
          break;
        default:
          _message = 'Fetch Book error';
      }
      return left(_message);
    } on SocketException catch (e) {
      return left("No Connection : $e");
    }
  }
}
