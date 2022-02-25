import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glosh/common/themes/theme.dart';
import 'package:glosh/ui/widgets/custom/controller/password_controller.dart';

class PasswordValidation extends StatelessWidget {
  final String tag;
  const PasswordValidation({required this.tag, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PasswordController controller =
        Get.put(PasswordController(), tag: tag);

    return Obx(
      () => Column(
        children: [
          Row(
            children: [
              AnimatedContainer(
                duration: Duration(milliseconds: 500),
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: controller.isPasswordEightCharacters
                      ? lightSeaGreenColor
                      : Colors.transparent,
                  border: controller.isPasswordEightCharacters
                      ? Border.all(color: Colors.transparent)
                      : Border.all(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Contains at least 8 characters",
                style: regularTextStyle.copyWith(
                    fontSize: 13,
                    color: controller.isPasswordEightCharacters
                        ? lightSeaGreenColor
                        : greyColor,
                    fontWeight: FontWeight.w300),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              AnimatedContainer(
                duration: Duration(milliseconds: 500),
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    color: controller.hasPasswordOneNumber
                        ? lightSeaGreenColor
                        : Colors.transparent,
                    border: controller.hasPasswordOneNumber
                        ? Border.all(color: Colors.transparent)
                        : Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(50)),
                child: Center(
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Contains at least 1 number",
                style: regularTextStyle.copyWith(
                    fontSize: 13,
                    color: controller.hasPasswordOneNumber
                        ? lightSeaGreenColor
                        : greyColor,
                    fontWeight: FontWeight.w300),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              AnimatedContainer(
                duration: Duration(milliseconds: 500),
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    color: controller.hasPasswordOneSpecialCharacter
                        ? lightSeaGreenColor
                        : Colors.transparent,
                    border: controller.hasPasswordOneSpecialCharacter
                        ? Border.all(color: Colors.transparent)
                        : Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(50)),
                child: Center(
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Contains at least 1 special character",
                style: regularTextStyle.copyWith(
                    fontSize: 13,
                    color: controller.hasPasswordOneSpecialCharacter
                        ? lightSeaGreenColor
                        : greyColor,
                    fontWeight: FontWeight.w300),
              )
            ],
          ),
        ],
      ),
    );
  }
}
