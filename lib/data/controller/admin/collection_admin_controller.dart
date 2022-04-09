part of '../getx_controller.dart';

class CollectionAdminController extends GetxController {
  final _state = ResultState.Loading.obs;
  void set state(value) => _state.value = value;
  ResultState get state => _state.value;

  final _message = ''.obs;
  String get message => _message.value;

  late Collection _collectionAdmin;
  Collection get collectionAdmin => _collectionAdmin;

  late CollectionById _collectionId;
  CollectionById get collectionId => _collectionId;

  @override
  void onInit() {
    fetchAllCollection();
    super.onInit();
  }

  Future<void> fetchAllCollection() async {
    _state.value = ResultState.Loading;
    final collection = await CollectionRepositories.getAllCollection();

    collection.fold(
      (left) {
        _state.value = ResultState.Error;
        return _message.value = left;
      },
      (right) {
        if (right.collections!.isEmpty) {
          _state.value = ResultState.NoData;
          return _message.value = 'Empty Data';
        } else {
          _state.value = ResultState.HasData;
          return _collectionAdmin = right;
        }
      },
    );
  }

  Future<void> deleteCollection({required String id}) async {
    final collection =
        await CollectionRepositories.deleteCollectionById(id: id);
    update();

    collection.fold(
      (left) {
        print(left);
      },
      (right) {
        print(right);
      },
    );
  }
}
