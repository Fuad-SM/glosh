part of '../../widget.dart';

class PasswordController extends GetxController {
  var _passwordVisible = true.obs;
  var _isPasswordEightCharacters = false.obs;
  var _hasPasswordOneNumber = false.obs;
  var _hasPasswordOneSpecialCharacter = false.obs;

  void set passwordVisible(value) => this._passwordVisible.value = value;
  void set isPasswordEightCharacters(value) =>
      this._isPasswordEightCharacters.value = value;
  void set hasPasswordOneNumber(value) =>
      this._hasPasswordOneNumber.value = value;
  void set hasPasswordOneSpecialCharacter(value) =>
      this._hasPasswordOneSpecialCharacter.value = value;

  bool get passwordVisible => this._passwordVisible.value;
  bool get isPasswordEightCharacters => this._isPasswordEightCharacters.value;
  bool get hasPasswordOneNumber => this._hasPasswordOneNumber.value;
  bool get hasPasswordOneSpecialCharacter =>
      this._hasPasswordOneSpecialCharacter.value;

  void changeVisible() {
    _passwordVisible.value = !_passwordVisible.value;
  }

  void onPasswordChanged(String password) {
    final _numericRegex = RegExp(r'[0-9]');
    final _specialRegex = RegExp(r'[!@#$%^&*(),.?":{}|<>]');

    _isPasswordEightCharacters.value = false;
    if (password.length >= 8) {
      _isPasswordEightCharacters.value = true;
    }

    _hasPasswordOneNumber.value = false;
    if (_numericRegex.hasMatch(password)) {
      _hasPasswordOneNumber.value = true;
    }

    _hasPasswordOneSpecialCharacter.value = false;
    if (_specialRegex.hasMatch(password)) {
      _hasPasswordOneSpecialCharacter.value = true;
    }
  }
}
