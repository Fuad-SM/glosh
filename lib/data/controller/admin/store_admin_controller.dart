part of '../getx_controller.dart';

class StoreAdminController extends GetxController {
  late ResultState _state;
  ResultState get state => _state;

  final _message = ''.obs;
  String get message => _message.value;

  late Store _storeAdmin;
  Store get storeAdmin => _storeAdmin;

  @override
  void onInit() {
    fetchStore();
    super.onInit();
  }

  Future<void> fetchStore() async {
    _state = ResultState.Loading;
    final store = await StoreRepositories.getStore();
    update();

    store.fold(
      (left) {
        _state = ResultState.Error;
        update();
        return _message.value = left;
      },
      (right) {
        if (right.store!.id!.isEmpty) {
          _state = ResultState.NoData;
          update();
          return _message.value = 'Empty Data';
        } else {
          _state = ResultState.HasData;
          update();
          return _storeAdmin = right;
        }
      },
    );
  }
}
