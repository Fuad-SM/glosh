part of '../screen.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                Text(
                  'Logging In',
                  style: regularTextStyle,
                ),
                const SizedBox(height: 15),
                Text(
                  'Welcome Back',
                  style: titleTextStyle,
                ),
                const SizedBox(height: 40),
                Text(
                  'E-Mail',
                  style:
                      regularTextStyle.copyWith(color: greyColor, fontSize: 13),
                ),
                CustomTextField(
                  textEditingController: controller.emailController,
                  onSubmit: (_) {
                    FocusScope.of(context)
                        .requestFocus(controller.passwordFocusNode);
                  },
                  focusNode: controller.emailFocusNode,
                  obsecureText: false,
                  tag: 'usernameLogin',
                ),
                const SizedBox(height: 30),
                Text(
                  'Password',
                  style:
                      regularTextStyle.copyWith(color: greyColor, fontSize: 13),
                ),
                CustomTextField(
                  textEditingController: controller.passwordController,
                  onSubmit: (_) {},
                  focusNode: controller.passwordFocusNode,
                  obsecureText: true,
                  tag: 'passwordLogin',
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot you password',
                        style: regularTextStyle.copyWith(
                            color: darkSeaGreenColor,
                            fontSize: 12,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 7),
                CustomElevatedBtn(
                  onPressed: () {
                    controller.clear();
                    Get.offAndToNamed(RouteName.navbarRoute);
                  },
                  title: 'Login',
                ),
                const SizedBox(height: 20),
                Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Don\'t have an account yet? ',
                          style: regularTextStyle.copyWith(
                              color: greyColor, fontSize: 13),
                        ),
                        TextSpan(
                          text: 'Sign up here!',
                          style: regularTextStyle.copyWith(
                              color: darkSeaGreenColor,
                              fontSize: 13,
                              decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.toNamed(RouteName.signUpRoute);
                              controller.clear();
                            },
                        ),
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
                        'Or login with',
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
                    for (var altLogin in alternative)
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
                          child: Image.asset(altLogin),
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
