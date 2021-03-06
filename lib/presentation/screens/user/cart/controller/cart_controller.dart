part of '../../../screen.dart';

class CountCartController extends GetxController {
  List product = [1, 2, 3];
  var _count = 1.obs;

  set count(value) => this._count.value = value;
  get count => this._count.value;

  increment() => _count++;
  decrement() {
    if (_count.value != 1) {
      _count--;
    }
  }
}

class CheckBoxController extends GetxController {
  var _check = false.obs;
  set check(value) => this._check.value = value;
  get check => this._check.value;

  void onSelected(bool value) {
    _check.value = value;
  }
}
