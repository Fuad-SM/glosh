part of '../../../screen.dart';

class ProfileUpdateModal extends GetView<ProfileController> {
  ProfileUpdateModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        Text(
          'Update Information',
          style: headerTxtStyle,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        Form(
          key: controller.formKey,
          child: Column(
            children: [
              TextFieldCategory(
                textController: controller.codeController,
                labelText: 'Email',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Email is empty';
                  }
                  return null;
                },
                onFieldSubmitted: (value) {
                  FocusScope.of(context).requestFocus(controller.nameFocusNode);
                },
                onSaved: (value) => controller.codeController.text,
                focusNode: controller.codeFocusNode,
              ),
              const SizedBox(height: 10),
              TextFieldCategory(
                textController: controller.nameController,
                labelText: 'Handle',
                onFieldSubmitted: (value) {},
                focusNode: controller.nameFocusNode,
                onSaved: (value) => controller.nameController.text,
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),
        CustomElevatedBtn(
          onPressed: () => controller.submit(context),
          title: 'Submit Colletion',
        ),
        SizedBox(height: Get.height / 6.3),
      ],
    );
  }
}
