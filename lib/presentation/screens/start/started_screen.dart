part of '../screen.dart';

class StartedScreen extends GetView<StartedController> {
  const StartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        if (controller.check == true) {
          if (controller.email.isEmpty && controller.password.isEmpty) {
            return LoginScreen();
          } else {
            return AppEnvironment.env == 'dev'
                ? HomeAdminScreen()
                : HomeBottomNavbar();
          }
        } else {
          return GetStartedScreen();
        }
      },
    );
  }
}
