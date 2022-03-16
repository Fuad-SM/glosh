import 'package:get/get.dart';
import 'package:glosh/core/core.dart';
import 'package:glosh/presentation/components/component.dart';
import 'package:glosh/presentation/routes/route_name.dart';
import 'package:glosh/presentation/screens/screen.dart';

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
        binding: ProductBinding(),
        transitionDuration: const Duration(milliseconds: 400),
        transition: Transition.native),
    // GetPage(
    //     name: RouteName.detailRoute,
    //     page: () => DetailBookScreen(detailBook: Get.arguments as BookModel?),
    //     binding: DetailBinding(),
    //     transitionDuration: const Duration(milliseconds: 400),
    //     transition: Transition.native),
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
