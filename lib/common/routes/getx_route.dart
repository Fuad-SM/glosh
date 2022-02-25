import 'package:get/get.dart';
import 'package:glosh/common/routes/route_name.dart';
import 'package:glosh/ui/screens/checkout/checkout_pages.dart';
import 'package:glosh/ui/screens/getstarted/getstarted_screen.dart';
import 'package:glosh/ui/screens/login/login_screen.dart';
import 'package:glosh/ui/screens/product/product_pages.dart';
import 'package:glosh/ui/screens/product_admin/product_admin.dart';
import 'package:glosh/ui/screens/signup/signup_screen.dart';
import 'package:glosh/ui/screens/cart/cart_screen.dart';
import 'package:glosh/ui/screens/home/home_pages.dart';
import 'package:glosh/ui/widgets/navbar/custom_navbar.dart';
import 'package:glosh/utils/dependency/getx_binding.dart';

class GetXRoute {
  static final List<GetPage> routes = [
    GetPage(
        name: RouteName.getStartedRoute,
        page: () => const GetStartedScreen(),
        transitionDuration: const Duration(milliseconds: 400),
        transition: Transition.native),
    GetPage(
        name: RouteName.loginRoute,
        page: () => const LoginScreen(),
        binding: LoginBinding(),
        transitionDuration: const Duration(milliseconds: 400),
        transition: Transition.native),
    GetPage(
        name: RouteName.signUpRoute,
        page: () => const SignUpScreen(),
        binding: SignUpBinding(),
        transitionDuration: const Duration(milliseconds: 400),
        transition: Transition.native),
    GetPage(
        name: RouteName.navbarRoute,
        page: () => HomeBottomNavbar(),
        transitionDuration: const Duration(milliseconds: 400),
        transition: Transition.native),
    //
    GetPage(
        name: RouteName.homeRoute,
        page: () => const HomeScreen(),
        transitionDuration: const Duration(milliseconds: 400),
        transition: Transition.native),
    GetPage(
        name: RouteName.productRoute,
        page: () => const ProductScreen(),
        transitionDuration: const Duration(milliseconds: 400),
        transition: Transition.native),
    GetPage(
        name: RouteName.cartRoute,
        page: () => const CartScreen(),
        transitionDuration: const Duration(milliseconds: 400),
        transition: Transition.native),
    GetPage(
        name: RouteName.checkoutRoute,
        page: () => const CheckoutScreen(),
        transitionDuration: const Duration(milliseconds: 400),
        transition: Transition.native),
    //
    GetPage(
        name: RouteName.productAdminRoute,
        page: () => const ProductAdmin(),
        transitionDuration: const Duration(milliseconds: 400),
        transition: Transition.native),
  ];
}
