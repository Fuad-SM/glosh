import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glosh/common/themes/theme.dart';
import 'package:glosh/data/model/const.dart';
import 'package:glosh/ui/screens/signup/controller/signup_controller.dart';
import 'package:glosh/ui/widgets/custom/custom_txtfield.dart';
import 'package:glosh/ui/widgets/custom/custom_elevated_btn.dart';
import 'package:glosh/ui/screens/signup/widgets/password_validation.dart';

class SignUpScreen extends GetView<SignUpController> {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                Text(
                  'Signing Up',
                  style: regularTextStyle,
                ),
                const SizedBox(height: 15),
                Text(
                  'Welcome to Glosh!',
                  style: titleTextStyle,
                ),
                const SizedBox(height: 40),
                Text(
                  'Username',
                  style:
                      regularTextStyle.copyWith(color: greyColor, fontSize: 13),
                ),
                CustomTextField(
                  textEditingController: controller.userController,
                  focusNode: controller.userFocusNode,
                  onSubmit: (_) {
                    FocusScope.of(context)
                        .requestFocus(controller.emailFocusNode);
                  },
                  obsecureText: false,
                  tag: 'username',
                ),
                const SizedBox(height: 30),
                Text(
                  'E-Mail',
                  style:
                      regularTextStyle.copyWith(color: greyColor, fontSize: 13),
                ),
                CustomTextField(
                  textEditingController: controller.emailController,
                  focusNode: controller.emailFocusNode,
                  onSubmit: (_) {
                    FocusScope.of(context)
                        .requestFocus(controller.passwordFocusNode);
                  },
                  obsecureText: false,
                  tag: 'email',
                ),
                const SizedBox(height: 30),
                Text(
                  'Password',
                  style:
                      regularTextStyle.copyWith(color: greyColor, fontSize: 13),
                ),
                CustomTextField(
                  textEditingController: controller.passwordController,
                  focusNode: controller.passwordFocusNode,
                  onSubmit: (_) {},
                  obsecureText: true,
                  tag: 'password',
                ),
                SizedBox(height: 15),
                PasswordValidation(
                  tag: 'password',
                ),
                const SizedBox(height: 15),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'By countinuing you agree to our ',
                        style: regularTextStyle.copyWith(
                            fontSize: 12, color: greyColor),
                      ),
                      TextSpan(
                        text: 'Terms of Service',
                        style: regularTextStyle.copyWith(
                            fontSize: 12, color: lightSeaGreenColor),
                        recognizer: TapGestureRecognizer()..onTap = () => {},
                      ),
                      TextSpan(
                        text: '\nand ',
                        style: regularTextStyle.copyWith(
                            fontSize: 12, color: greyColor),
                      ),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: regularTextStyle.copyWith(
                            fontSize: 12, color: lightSeaGreenColor),
                        recognizer: TapGestureRecognizer()..onTap = () => {},
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                CustomElevatedBtn(onPressed: () {}, title: 'Sign Up'),
                const SizedBox(height: 15),
                Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Already have an account? ',
                          style: regularTextStyle.copyWith(
                              color: greyColor, fontSize: 13),
                        ),
                        TextSpan(
                          text: 'Login here!',
                          style: regularTextStyle.copyWith(
                              color: darkSeaGreenColor,
                              fontSize: 13,
                              decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.back(),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: greyColor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Or Sign Up with',
                        style: regularTextStyle.copyWith(
                            color: blackColor, fontWeight: FontWeight.w300),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: greyColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var altSignUp in alternative)
                      InkWell(
                        child: Container(
                          width: 60,
                          height: 60,
                          padding: EdgeInsets.all(13),
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: whiteColor,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 2,
                                offset: Offset(1, 3),
                              ),
                            ],
                          ),
                          child: Image.asset(altSignUp),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
