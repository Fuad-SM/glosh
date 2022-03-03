import 'package:get/get.dart';
import 'package:glosh/ui/screens/screen.dart';

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

class ProductAdminBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductAdminController());
  }
}
