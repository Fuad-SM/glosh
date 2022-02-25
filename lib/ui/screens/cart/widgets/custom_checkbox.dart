import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glosh/common/themes/theme.dart';
import 'package:glosh/ui/screens/cart/controller/cart_controller.dart';

class CustomCheckBox extends StatelessWidget {
  final String tag;
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
