part of '../../component.dart';

class LogoutController extends GetxController {
  var _isLoading = false.obs;
  bool get isLoading => this._isLoading.value;

  Future<void> logout(BuildContext context) async {
    CoolAlert.show(
      context: context,
      type: CoolAlertType.loading,
      barrierDismissible: false,
    );
    final loginResponse = await UserRepositories.logout();
    Get.back();

    loginResponse.fold(
      (left) {
        _isLoading.value = false;
        CoolAlert.show(
          context: context,
          type: CoolAlertType.warning,
          title: 'Failed',
          text: 'Login Failed',
        );
        print(left);
      },
      (right) async {
        _isLoading.value = false;
        PreferencesHelper().deleteUser();
        Get.offAllNamed(GetXRoute.loginRouteName);
        CoolAlert.show(
          context: context,
          type: CoolAlertType.success,
          title: 'Success',
          text: 'Logout Success',
        );
        print(right);
      },
    );
  }
}
