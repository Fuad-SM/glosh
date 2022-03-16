part of '../../screen.dart';

class LoginController extends GetxController {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  FocusNode _emailFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();

  var _isLoading = false.obs;
  bool get isLoading => this._isLoading.value;

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

  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;
  FocusNode get emailFocusNode => _emailFocusNode;
  FocusNode get passwordFocusNode => _passwordFocusNode;

  var _message = ''.obs;
  String get message => _message.value;

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
    update();

    loginResponse.fold(
      (left) async {
        _isLoading.value = false;
        update();
        // switch (left) {
        //   case 'Login Failed':
        //     break;
        //   default:
        // }
        CoolAlert.show(
          context: context,
          type: CoolAlertType.warning,
          title: 'Success',
          text: 'Login Failed',
        );
      },
      (right) async {
        _isLoading.value = false;
        clear();
        print(right);
        update();
        Get.offAndToNamed(RouteName.navbarRoute);
        await CoolAlert.show(
          context: context,
          type: CoolAlertType.success,
          title: 'Success',
          text: 'Login Success',
        );
      },
    );
  }
}
