part of '../../screen.dart';

class SignUpController extends GetxController {
  final _userController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  FocusNode _userFocusNode = FocusNode();
  FocusNode _emailFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    _userController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _userFocusNode.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  TextEditingController get userController => _userController;
  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;
  FocusNode get userFocusNode => _userFocusNode;
  FocusNode get emailFocusNode => _emailFocusNode;
  FocusNode get passwordFocusNode => _passwordFocusNode;

  // Future<dynamic> _loading(BuildContext context) {
  //   return CoolAlert.show(
  //     context: context,
  //     type: CoolAlertType.loading,
  //   );
  // }

  // Future<dynamic> _success(BuildContext context) {
  //   return CoolAlert.show(
  //     context: context,
  //     type: CoolAlertType.success,
  //     title: 'Success',
  //     text: 'Your account has been created',
  //   );
  // }
}
