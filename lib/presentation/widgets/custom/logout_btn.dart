part of '../component.dart';

class LogoutButton extends GetView<LogoutController> {
  const LogoutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: MediaQuery.of(context).size.width - 60,
      child: ElevatedButton(
        onPressed: () => controller.logout(context),
        style: ElevatedButton.styleFrom(
          primary: darkSeaGreenColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          'Logout',
          style: elevatedButtonTextStyle,
        ),
      ),
    );
  }
}
