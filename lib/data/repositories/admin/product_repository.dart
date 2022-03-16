import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:glosh/core/core.dart';
import 'package:glosh/data/model/admin/product.dart';

class ProductRepositories {
  static Future<Either<String, Product>> getAllProduct() async {
    Dio dio = Dio();
    Response? response;
    final String? token = await SecureStorageHelper().readToken();
    Options options = Options(headers: {"Authorization": "Bearer $token"});
    // log(token);

    try {
      response = await dio.get(
        'http://mobileapi.cilsy.id:9000/admin/products',
        options: options,
      );

      Product jsonsData = response.data;
      // ProductElement listBook =
      //     jsonsData.map((item) => ProductElement.fromJson(item)).toList();
      print(jsonsData);
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
          _message = 'Fetch product error:$e';
      }
      return left(_message);
    } on SocketException catch (e) {
      return left('No internet connection detected : $e');
    }
  }
}
