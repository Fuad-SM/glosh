part of '../../../screen.dart';

class LoginController extends GetxController {
  //
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  FocusNode _emailFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();

  // Getter
  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;
  FocusNode get emailFocusNode => _emailFocusNode;
  FocusNode get passwordFocusNode => _passwordFocusNode;

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
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  void clear() {
    _emailController.clear();
    _passwordController.clear();
  }

  void submit(BuildContext context) async {
    _isLoading.value = true;
    if (_emailController.text == '' || _passwordController.text == '') {
      CoolAlert.show(
        context: context,
        type: CoolAlertType.info,
        text: 'Please check again\nyour E-mail and Password',
      );
    } else {
      login(context,
          email: _emailController.text, password: _passwordController.text);
    }
  }

  Future<void> login(BuildContext context,
      {required String email, required String password}) async {
    CoolAlert.show(
      context: context,
      type: CoolAlertType.loading,
      barrierDismissible: false,
    );
    final loginResponse =
        await UserRepositories.login(email: email, password: password);
    Get.back();

    loginResponse.fold(
      (left) {
        _isLoading.value = false;
        CoolAlert.show(
          context: context,
          type: CoolAlertType.warning,
          title: 'Failed',
          text: 'Login Failed',
        );
        print(left);
      },
      (right) async {
        _isLoading.value = false;
        PreferencesHelper().saveUserLogin(email);
        AppEnvironment.env == 'dev'
            ? Get.offAndToNamed(GetXRoute.homeAdminRouteName)
            : Get.offAndToNamed(GetXRoute.homeUserRouteName);
        CoolAlert.show(
          context: context,
          type: CoolAlertType.success,
          title: 'Success',
          text: 'Login Success',
        );
        print(right);
      },
    );
  }
}
