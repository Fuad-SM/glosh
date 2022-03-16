import 'package:get/get.dart';
import 'package:glosh/core/core.dart';
import 'package:glosh/data/model/admin/product.dart';
import 'package:glosh/data/repositories/admin/product_repository.dart';

class ProductAdminController extends GetxController {
  late ResultState _state;
  ResultState get state => _state;

  var _message = ''.obs;
  String get message => _message.value;

  late Product _productAdmin;
  Product get productAdmin => _productAdmin;

  @override
  void onInit() {
    fetchAllProduct();
    super.onInit();
  }

  Future<void> fetchAllProduct() async {
    _state = ResultState.Loading;
    final product = await ProductRepositories.getAllProduct();
    update();

    product.fold(
      (left) {
        _state = ResultState.Error;
        update();
        return _message.value = left;
      },
      (right) {
        if (right.products!.isEmpty) {
          _state = ResultState.NoData;
          update();
          return _message.value = 'Empty Data';
        } else {
          _state = ResultState.HasData;
          update();
          return _productAdmin = right;
        }
      },
    );
  }
}
