import 'package:get/get.dart';
import 'package:glosh/common/routes/route_name.dart';
import 'package:glosh/ui/screens/screen.dart';
import 'package:glosh/ui/widgets/widget.dart';
import 'package:glosh/utils/dependency/getx_binding.dart';

class GetXRoute {
  static final List<GetPage> routes = [
    GetPage(
        name: RouteName.getStartedRoute,
        page: () => const GetStartedScreen(),
        binding: GetStartedBinding(),
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
        binding: NavbarBinding(),
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
        binding: ProductAdminBinding(),
        transitionDuration: const Duration(milliseconds: 400),
        transition: Transition.native),
  ];
}
