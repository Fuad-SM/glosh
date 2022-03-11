import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:glosh/data/model/book_model.dart';

class BookRepositories {
  static Future<Either<String, List<BookModel>>> getAllBook() async {
    Dio dio = Dio();

    try {
      Response response = await dio
          .get("https://run.mocky.io/v3/3fc70f8c-d4b8-4576-8151-923880e817fd");

      List jsonsData = response.data;
      List<BookModel> listBook =
          jsonsData.map((item) => BookModel.fromJson(item)).toList();

      return right(listBook);
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
