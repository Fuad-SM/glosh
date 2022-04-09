part of '../../../screen.dart';

class ProfileController extends GetxController {
  var _isLoading = false.obs;
  void set isLoading(value) => _isLoading.value = value;
  bool get isLoading => _isLoading.value;

  var _isValid = false.obs;
  void set isValid(value) => _isValid.value = value;
  bool get isValid => _isValid.value;

  final _codeController = TextEditingController();
  final _nameController = TextEditingController();
  TextEditingController get codeController => _codeController;
  TextEditingController get nameController => _nameController;

  final _codeFocusNode = FocusNode();
  final _nameFocusNode = FocusNode();
  FocusNode get codeFocusNode => _codeFocusNode;
  FocusNode get nameFocusNode => _nameFocusNode;

  final _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> get formKey => _formKey;

  final collectionAdmin = Get.put(CollectionAdminController());

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    _codeFocusNode.dispose();
    _nameFocusNode.dispose();
    super.onClose();
  }

  void clear() {
    _codeController.clear();
    _nameController.clear();
  }

  void submit(BuildContext context) {
    _isLoading.value = true;
    if (_formKey.currentState!.validate()) {
      _isValid.value = false;
      postCollection(context,
          title: _codeController.text, handle: _nameController.text);
    } else {
      _isValid.value = true;
      CoolAlert.show(
        context: context,
        type: CoolAlertType.warning,
        text: 'Please check again',
      );
      _formKey.currentState!.save();
    }
  }

  Future<void> fetchCollectionById({required String id}) async {
    final collection = await CollectionRepositories.getCollectionById(id: id);

    collection.fold(
      (left) {},
      (right) {
        _codeController.text = right.collection!.title!;
        _nameController.text = right.collection!.handle!;
      },
    );
  }

  Future<void> postCollection(BuildContext context,
      {required String title, required String handle}) async {
    CoolAlert.show(
      context: context,
      type: CoolAlertType.loading,
      barrierDismissible: false,
    );
    final postResponse = await CollectionRepositories.addCollection(
        title: title, handle: handle);
    Get.back();

    postResponse.fold(
      (left) {
        _isLoading.value = false;
        CoolAlert.show(
          context: context,
          type: CoolAlertType.warning,
          title: 'Failed',
          text: 'Post Failed',
        );
        print(left);
      },
      (right) async {
        _isLoading.value = false;
        CoolAlert.show(
          context: context,
          type: CoolAlertType.success,
          title: 'Success',
          text: 'Post Success',
        );
        clear();
        collectionAdmin.fetchAllCollection();
        print(right);
      },
    );
  }
}
