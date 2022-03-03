part of '../widget.dart';

class CustomTextField extends StatelessWidget {
  final String tag;
  final bool obsecureText;
  final TextEditingController textEditingController;
  final FocusNode focusNode;
  final void Function(String)? onSubmit;
  const CustomTextField(
      {required this.obsecureText,
      required this.tag,
      required this.textEditingController,
      required this.focusNode,
      required this.onSubmit,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PasswordController controller =
        Get.put(PasswordController(), tag: tag);

    return obsecureText
        ? Obx(
            () => TextField(
              controller: textEditingController,
              focusNode: focusNode,
              onSubmitted: onSubmit,
              textInputAction: TextInputAction.done,
              cursorColor: darkSeaGreenColor,
              onChanged: (password) => controller.onPasswordChanged(password),
              obscureText: controller.passwordVisible,
              style: TextStyle(fontSize: 16, color: lightSeaGreenColor),
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                suffixIcon: IconButton(
                  icon: Icon(
                    controller.passwordVisible
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: darkSeaGreenColor,
                    size: 24,
                  ),
                  onPressed: () => controller.changeVisible(),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: lightSeaGreenColor),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: lightGreyColor),
                ),
              ),
            ),
          )
        : TextField(
            controller: textEditingController,
            focusNode: focusNode,
            onSubmitted: onSubmit,
            textInputAction: TextInputAction.done,
            cursorColor: darkSeaGreenColor,
            style: TextStyle(fontSize: 16, color: lightSeaGreenColor),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: lightSeaGreenColor),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: lightGreyColor),
              ),
            ),
          );
  }
}
