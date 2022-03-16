part of '../../screen.dart';

class CustomOutlinedBtn extends StatelessWidget {
  final String title;
  const CustomOutlinedBtn({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () {},
      icon: Icon(Icons.edit, size: 18, color: darkSeaGreenColor),
      label: Text(
        title,
        style: TextStyle(fontSize: 12, color: darkSeaGreenColor),
      ),
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: darkSeaGreenColor, width: 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
    );
  }
}
