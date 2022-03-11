import 'dart:async';
import 'package:get/get.dart';
import 'package:glosh/data/model/book_category.dart';
import 'package:glosh/data/model/const.dart';
import 'package:glosh/data/repositories/book_category_repository.dart';

class BookCategoryController extends GetxController {
  late ResultState _state;
  ResultState get state => _state;

  var _message = ''.obs;
  String get message => _message.value;

  late List<BookCategory> _bookCategory;
  List<BookCategory> get bookCategory => _bookCategory;

  @override
  void onInit() {
    fetchAllCategory();
    super.onInit();
  }

  Future<void> fetchAllCategory() async {
    _state = ResultState.Loading;
    final category = await BookCategoryRepositories.getAllCategory();
    update();

    category.fold((left) {
      _state = ResultState.Error;
      update();
      return _message.value = left;
    }, (right) {
      if (right.isEmpty) {
        _state = ResultState.NoData;
        update();
        return _message.value = 'Empty Data';
      } else {
        _state = ResultState.HasData;
        update();
        return _bookCategory = right;
      }
    });
  }
}
