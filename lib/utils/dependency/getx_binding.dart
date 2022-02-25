import 'package:get/get.dart';
import 'package:glosh/ui/screens/login/controller/login_controller.dart';
import 'package:glosh/ui/screens/signup/controller/signup_controller.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}

class SignUpBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpController());
  }
}
