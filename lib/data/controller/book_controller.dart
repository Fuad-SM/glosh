import 'dart:async';
import 'package:get/get.dart';
import 'package:glosh/data/repositories/book_repository.dart';

// class BookController extends GetxController {
//   late ResultState _state;
//   ResultState get state => _state;

//   var _message = ''.obs;
//   String get message => _message.value;

//   late List<BookModel> _bookModel;
//   List<BookModel> get bookModel => _bookModel;

//   @override
//   void onInit() {
//     fetchAllBook();
//     super.onInit();
//   }

//   Future<void> fetchAllBook() async {
//     _state = ResultState.Loading;
//     final book = await BookRepositories.getAllBook();
//     update();

//     book.fold((l) {
//       _state = ResultState.Error;
//       update();
//       return _message.value = l;
//     }, (r) {
//       if (r.isEmpty) {
//         _state = ResultState.NoData;
//         update();
//         return _message.value = 'Empty Data';
//       } else {
//         _state = ResultState.HasData;
//         update();
//         return _bookModel = r;
//       }
//     });
//   }
// }
