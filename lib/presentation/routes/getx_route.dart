import 'package:get/get.dart';
import 'package:glosh/core/core.dart';
import 'package:glosh/presentation/components/component.dart';
import 'package:glosh/presentation/screens/screen.dart';

class GetXRoute {
  // Route Name
  static const String startedRouteName = '/';
  static const String getStartedRouteName = '/getStarted';
  static const String loginRouteName = '/login';
  static const String signUpRouteName = '/signUp';

  // User Part
  static const String homeUserRouteName = '/homeUser';
  static const String productUserRouteName = '/productUser';
  static const String detailRouteName = '/detail';
  static const String checkoutRouteName = '/check';

  // Admin Part
  static const String homeAdminRouteName = '/homeAdmin';
  static const String productAdminRouteName = '/productAdmin';

  // Page Route
  static final List<GetPage> getPageRoutes = [
    GetPage(
        name: startedRouteName,
        page: () => const StartedScreen(),
        binding: StartedBinding(),
        transitionDuration: const Duration(milliseconds: 400),
        transition: Transition.native),
    GetPage(
        name: getStartedRouteName,
        page: () => const GetStartedScreen(),
        binding: GetStartedBinding(),
        transitionDuration: const Duration(milliseconds: 400),
        transition: Transition.native),
    GetPage(
        name: loginRouteName,
        page: () => const LoginScreen(),
        binding: LoginBinding(),
        transitionDuration: const Duration(milliseconds: 400),
        transition: Transition.native),
    GetPage(
        name: signUpRouteName,
        page: () => const SignUpScreen(),
        binding: SignUpBinding(),
        transitionDuration: const Duration(milliseconds: 400),
        transition: Transition.native),

    // User Part
    GetPage(
        name: homeUserRouteName,
        page: () => HomeBottomNavbar(),
        binding: NavbarBinding(),
        transitionDuration: const Duration(milliseconds: 400),
        transition: Transition.native),
    GetPage(
        name: productUserRouteName,
        page: () => const ProductUserScreen(),
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
        name: checkoutRouteName,
        page: () => const CheckoutScreen(),
        transitionDuration: const Duration(milliseconds: 400),
        transition: Transition.native),

    // Admin Part
    GetPage(
        name: homeAdminRouteName,
        page: () => const HomeAdminScreen(),
        transitionDuration: const Duration(milliseconds: 400),
        transition: Transition.native),
    GetPage(
        name: productAdminRouteName,
        page: () => const ProductAdminScreen(),
        binding: ProductAdminBinding(),
        transitionDuration: const Duration(milliseconds: 400),
        transition: Transition.native),
  ];
}
