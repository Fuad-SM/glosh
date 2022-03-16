part of '../component.dart';

class CustomElevatedBtn extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const CustomElevatedBtn(
      {required this.onPressed, required this.title, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: MediaQuery.of(context).size.width - 60,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: darkSeaGreenColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          title,
          style: elevatedButtonTextStyle,
        ),
      ),
    );
  }
}
