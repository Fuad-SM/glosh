import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  FocusNode _emailFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();

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
}
