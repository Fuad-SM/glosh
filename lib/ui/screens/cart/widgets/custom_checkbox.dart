part of '../../screen.dart';

class CustomCheckBox extends StatelessWidget {
  final String tag; // respon
  const CustomCheckBox({required this.tag, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CheckBoxController checkBox = Get.put(CheckBoxController(), tag: tag);

    return Obx(
      () => Checkbox(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
        visualDensity: VisualDensity.compact,
        checkColor: Colors.white,
        fillColor: MaterialStateProperty.resolveWith(_checkBoxColor),
        value: checkBox.check,
        onChanged: (bool? value) {
          checkBox.check = value!;

          if (tag == 'all') {
            for (int i = 0; i < product.length; i++) {
              var generateNumber = Get.find<CheckBoxController>(tag: '$i');
              generateNumber.check = value;
            }
          } else {
            List<bool> checkAll = [];
            for (int i = 0; i < product.length; i++) {
              var generateNumber = Get.find<CheckBoxController>(tag: '$i');
              checkAll.add(generateNumber.check);
            }

            print(checkAll);

            if (checkAll.every((element) => element == true) &&
                checkAll.length == product.length) {
              var controller = Get.find<CheckBoxController>(tag: 'all');
              controller.check = true;
              print(controller.check);
            } else {
              var controller = Get.find<CheckBoxController>(tag: 'all');
              controller.check = false;
              print(controller.check);
            }
          }
        },
      ),
    );
  }

  Color _checkBoxColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return lightSeaGreenColor;
    }
    return darkSeaGreenColor;
  }
}
