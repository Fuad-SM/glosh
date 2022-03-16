// import 'dart:io';
// import 'package:dartz/dartz.dart';
// import 'package:dio/dio.dart';
// import 'package:glosh/data/model/book_model.dart';

// class BookRepositories {
//   static Future<Either<String, List<BookModel>>> getAllBook() async {
//     Dio dio = Dio();

//     try {
//       Response response = await dio
//           .get("https://run.mocky.io/v3/fb47e348-5931-4b31-a156-06cdef3a57ff");

//       List jsonsData = response.data;
//       List<BookModel> listBook =
//           jsonsData.map((item) => BookModel.fromJson(item)).toList();

//       return right(listBook);
//     } on DioError catch (e) {
//       String _message = '';
//       switch (e.type) {
//         case DioErrorType.connectTimeout:
//         case DioErrorType.sendTimeout:
//         case DioErrorType.receiveTimeout:
//           _message = 'The connection has timed out';
//           break;
//         case DioErrorType.other:
//           _message = 'No internet connection detected';
//           break;
//         case DioErrorType.response:
//           switch (e.response!.statusCode) {
//             case 401:
//             case 403:
//               _message = 'Access denied';
//               break;
//             case 404:
//               _message = 'The requested information could not be found';
//               break;
//             case 408:
//               _message = 'The connection has timed out';
//               break;
//             case 500:
//             case 503:
//               _message = 'Unknown error occurred, please try again later.';
//               break;
//             default:
//               _message = 'Fetch Book Eror';
//           }
//           break;
//         default:
//           _message = 'Fetch Book Eror';
//       }
//       return left(_message);
//     } on SocketException catch (e) {
//       return left('No internet connection detected : $e');
//     }
//   }
// }
