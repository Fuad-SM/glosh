part of 'getx_controller.dart';

class CustomerController extends GetxController {
  final _state = ResultState.Loading.obs;
  void set state(value) => _state.value = value;
  ResultState get state => _state.value;

  final _message = ''.obs;
  String get message => _message.value;

  late Customer _customer;
  Customer get customer => _customer;

  @override
  void onInit() {
    getCustomer();
    super.onInit();
  }

  Future<void> getCustomer() async {
    _state.value = ResultState.Loading;
    final customer = await CustomerRepositories.getUser();

    customer.fold(
      (left) {
        _state.value = ResultState.Error;
        return _message.value = left;
      },
      (right) {
        if (right.customer!.id!.isEmpty) {
          _state.value = ResultState.NoData;
          return _message.value = 'Empty Data';
        } else {
          _state.value = ResultState.HasData;
          return _customer = right;
        }
      },
    );
  }
}
