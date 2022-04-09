part of 'getx_controller.dart';

class ProductAdminController extends GetxController {
  final _state = ResultState.Loading.obs;
  void set state(value) => _state.value = value;
  ResultState get state => _state.value;

  final _message = ''.obs;
  String get message => _message.value;

  late Product _productAdmin;
  Product get productAdmin => _productAdmin;

  @override
  void onInit() {
    fetchAllProduct();
    super.onInit();
  }

  Future<void> fetchAllProduct() async {
    _state.value = ResultState.Loading;
    final product = await ProductRepositories.getAllProduct();

    product.fold(
      (left) {
        _state.value = ResultState.Error;
        return _message.value = left;
      },
      (right) {
        if (right.products!.isEmpty) {
          _state.value = ResultState.NoData;
          return _message.value = 'Empty Data';
        } else {
          _state.value = ResultState.HasData;
          return _productAdmin = right;
        }
      },
    );
  }
}
