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
              child: StaggeredAnimation(
                verticalOffset: -50,
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
                    style: regularTextStyle.copyWith(
                        color: greyColor, fontSize: 13),
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
                    style: regularTextStyle.copyWith(
                        color: greyColor, fontSize: 13),
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
                  SizedBox(height: Get.height * 0.3),
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
                ],
              )

              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     const SizedBox(height: 30),
              //     Text(
              //       'Logging In',
              //       style: regularTextStyle,
              //     ),
              //     const SizedBox(height: 15),
              //     Text(
              //       'Welcome Back',
              //       style: titleTextStyle,
              //     ),
              //     const SizedBox(height: 40),
              //     Text(
              //       'E-Mail',
              //       style:
              //           regularTextStyle.copyWith(color: greyColor, fontSize: 13),
              //     ),
              //     CustomTextField(
              //       textEditingController: controller.emailController,
              //       onSubmit: (_) {
              //         FocusScope.of(context)
              //             .requestFocus(controller.passwordFocusNode);
              //       },
              //       focusNode: controller.emailFocusNode,
              //       obsecureText: false,
              //       tag: 'usernameLogin',
              //     ),
              //     const SizedBox(height: 30),
              //     Text(
              //       'Password',
              //       style:
              //           regularTextStyle.copyWith(color: greyColor, fontSize: 13),
              //     ),
              //     CustomTextField(
              //       textEditingController: controller.passwordController,
              //       onSubmit: (_) {},
              //       focusNode: controller.passwordFocusNode,
              //       obsecureText: true,
              //       tag: 'passwordLogin',
              //     ),
              //     SizedBox(
              //       width: MediaQuery.of(context).size.width,
              //       child: Align(
              //         alignment: Alignment.centerRight,
              //         child: TextButton(
              //           onPressed: () {},
              //           child: Text(
              //             'Forgot you password',
              //             style: regularTextStyle.copyWith(
              //                 color: darkSeaGreenColor,
              //                 fontSize: 12,
              //                 decoration: TextDecoration.underline),
              //           ),
              //         ),
              //       ),
              //     ),
              //     SizedBox(height: Get.height * 0.3),
              //     CustomElevatedBtn(
              //       onPressed: () {
              //         controller.clear();
              //         Get.offAndToNamed(RouteName.navbarRoute);
              //       },
              //       title: 'Login',
              //     ),
              //     const SizedBox(height: 20),
              //     Center(
              //       child: RichText(
              //         text: TextSpan(
              //           children: [
              //             TextSpan(
              //               text: 'Don\'t have an account yet? ',
              //               style: regularTextStyle.copyWith(
              //                   color: greyColor, fontSize: 13),
              //             ),
              //             TextSpan(
              //               text: 'Sign up here!',
              //               style: regularTextStyle.copyWith(
              //                   color: darkSeaGreenColor,
              //                   fontSize: 13,
              //                   decoration: TextDecoration.underline),
              //               recognizer: TapGestureRecognizer()
              //                 ..onTap = () {
              //                   Get.toNamed(RouteName.signUpRoute);
              //                   controller.clear();
              //                 },
              //             ),
              //           ],
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              ),
        ),
      ),
    );
  }
}
