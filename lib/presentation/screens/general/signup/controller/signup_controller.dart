part of '../../../screen.dart';

class SignUpController extends GetxController {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  FocusNode _firstNameFocusNode = FocusNode();
  FocusNode _lastNameFocusNode = FocusNode();
  FocusNode _emailFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();

  var _isLoading = false.obs;
  bool get isLoading => this._isLoading.value;

  var _message = ''.obs;
  String get message => _message.value;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _firstNameFocusNode.dispose();
    _lastNameFocusNode.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  TextEditingController get firstNameController => _firstNameController;
  TextEditingController get lastNameController => _lastNameController;
  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;
  FocusNode get firstNameFocusNode => _firstNameFocusNode;
  FocusNode get lastNameFocusNode => _lastNameFocusNode;
  FocusNode get emailFocusNode => _emailFocusNode;
  FocusNode get passwordFocusNode => _passwordFocusNode;

  void submit(BuildContext context) async {
    _isLoading.value = true;
    if (_firstNameController.text == '' ||
        _lastNameController.text == '' ||
        _emailController.text == '' ||
        _passwordController.text == '') {
      CoolAlert.show(
        context: context,
        type: CoolAlertType.info,
        text: 'Please check again\nyour input',
      );
    } else {
      // login(context,
      //     email: _emailController.text, password: _passwordController.text);
      create(context,
          email: _emailController.text,
          password: _passwordController.text,
          firstName: _firstNameController.text,
          lastName: _lastNameController.text);
    }
  }

  Future<void> create(
    BuildContext context, {
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  }) async {
    CoolAlert.show(
      context: context,
      type: CoolAlertType.loading,
      barrierDismissible: false,
    );
    final createUser = await CustomerRepositories.createUser(
        email: email,
        password: password,
        firstName: firstName,
        lastName: lastName);
    Get.back();

    createUser.fold(
      (left) {
        _isLoading.value = false;
        CoolAlert.show(
          context: context,
          type: CoolAlertType.warning,
          title: 'Failed',
          text: 'Sign up Failed',
        );
        print(left);
      },
      (right) async {
        _isLoading.value = false;

        CoolAlert.show(
          context: context,
          type: CoolAlertType.success,
          title: 'Success',
          text: 'Sign up Success',
        );
        print(right);
      },
    );
  }
}
