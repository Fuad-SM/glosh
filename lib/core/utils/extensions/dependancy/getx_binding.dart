part of '../../../core.dart';

class StartedBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StartedController());
    Get.lazyPut(() => GetStartController());
    Get.lazyPut(() => LoginController());
  }
}

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
    Get.lazyPut(() => CountCartController());
  }
}

class DetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailController());
  }
}

class ProductBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductAdminController());
  }
}

class ProductAdminBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductAdminUIController());
    Get.lazyPut(() => ProductViewController());
  }
}

class InjectController {
  static void doRegister() {
    Get.lazyPut(() => FireStorageController());
  }
}
