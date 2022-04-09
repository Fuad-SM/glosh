part of '../../../core.dart';

class StartedBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StartedController());
    Get.lazyPut(() => GetStartController());
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => NavbarController());
    Get.lazyPut(() => ProductAdminController());
    Get.lazyPut(() => StoreAdminController());
    Get.lazyPut(() => CountCartController());
    Get.lazyPut(() => LogoutController());
    Get.lazyPut(() => CustomerController());
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
    Get.lazyPut(() => ProductAdminController());
    Get.lazyPut(() => CountCartController());
    Get.lazyPut(() => LogoutController());
    Get.lazyPut(() => CustomerController());
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
    Get.lazyPut(() => StoreAdminController());
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
  static void doRegister() async {
    Get.lazyPut(() => FireStorageController());
  }
}
