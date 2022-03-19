part of '../../screen.dart';

class StartedController extends GetxController {
  final _check = false.obs;
  void set check(value) => _check.value = value;
  bool get check => _check.value;

  final _email = ''.obs;
  void set email(value) => _email.value = value;
  String get email => _email.value;

  final _password = ''.obs;
  void set password(value) => _password.value = value;
  String get password => _password.value;

  @override
  void onInit() {
    checkStart();
    checkLogin();
    super.onInit();
  }

  Future<void> checkStart() async {
    var start = await PreferencesHelper().getStart();
    _check.value = start!;
    print('sudah start = $start');
  }

  Future<void> checkLogin() async {
    var email = await PreferencesHelper().getEmail();
    var password = await PreferencesHelper().getPassword();
    _email.value = email!;
    _password.value = password!;
    print('Login dengan Email = $email dan Password = $password');
  }
}
