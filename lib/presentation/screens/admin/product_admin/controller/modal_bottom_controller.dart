part of '../../../screen.dart';

class CategoryAddController extends GetxController {
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
}
