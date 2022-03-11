import 'package:get/get.dart';
import 'package:glosh/data/controller/book_controller.dart';
import 'package:glosh/data/controller/firestorage_controller.dart';
import 'package:glosh/ui/screens/screen.dart';
import 'package:glosh/ui/widgets/widget.dart';

class GetStartedBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetStartController());
  }
}

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

class NavbarBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NavbarController());
  }
}

class ProductBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookController());
  }
}

class ProductAdminBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductAdminController());
    Get.lazyPut(() => ProductViewController());
  }
}

class InjectController {
  static void doRegister() {
    Get.lazyPut(() => FireStorageController());
  }
}
