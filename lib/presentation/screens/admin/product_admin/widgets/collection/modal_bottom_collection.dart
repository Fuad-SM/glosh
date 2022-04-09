part of '../../../../screen.dart';

class CategoryAddModal extends GetView<CategoryAddController> {
  CategoryAddModal({this.id = '', Key? key}) : super(key: key);
  final String id;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        Text(
          id == '' ? 'Add Collection' : 'Update Collection',
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
                labelText: 'Title',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Title is empty';
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
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Handle is empty';
                  }
                  return null;
                },
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

class TextFieldCategory extends StatelessWidget {
  final String? labelText;
  final TextEditingController? textController;
  final FocusNode focusNode;
  final String? Function(String?)? validator;
  final dynamic onFieldSubmitted;
  final dynamic onSaved;

  const TextFieldCategory(
      {required this.labelText,
      required this.textController,
      this.validator = null,
      required this.onFieldSubmitted,
      required this.onSaved,
      required this.focusNode,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: textController,
      focusNode: focusNode,
      onFieldSubmitted: onFieldSubmitted,
      onSaved: onSaved,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(18),
        labelText: labelText,
        labelStyle: GoogleFonts.poppins(
          fontSize: 14,
          color: const Color(0xffA6A1A1),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: darkSeaGreenColor),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffA6A1A1)),
        ),
      ),
    );
  }
}
