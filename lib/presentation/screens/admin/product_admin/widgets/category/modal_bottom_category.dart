part of '../../../../screen.dart';

class CategoryAddModal extends GetView<CategoryAddController> {
  CategoryAddModal({required this.id, Key? key}) : super(key: key);
  final int id;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        Text(
          'Write A Review',
          // style: blackTextStyle.copyWith(fontSize: 20),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        Form(
          key: controller.formKey,
          child: Column(
            children: [
              TextFieldCategory(
                textController: controller.codeController,
                labelText: 'Code',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Code is empty, Please enter your code';
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
                labelText: 'Name',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Name is empty, Please Enter your name';
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
        AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.ease,
          width: controller.isLoading == true && controller.isValid == false
              ? MediaQuery.of(context).size.width / 5.5
              : MediaQuery.of(context).size.width - 70,
          height: MediaQuery.of(context).size.height / 15,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: darkSeaGreenColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: controller.isLoading == true && controller.isValid == false
                ? CircularProgressIndicator(color: whiteColor)
                : Text(
                    'Submit Review',
                    // style: whiteTextStyle.copyWith(fontSize: 16),
                  ),
            onPressed: () {},
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height / 6.3),
      ],
    );
  }
}

class TextFieldCategory extends StatelessWidget {
  final String? labelText;
  final TextEditingController? textController;
  final FocusNode focusNode;
  final dynamic validator;
  final dynamic onFieldSubmitted;
  final dynamic onSaved;

  const TextFieldCategory(
      {required this.labelText,
      required this.textController,
      required this.validator,
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
