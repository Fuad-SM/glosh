part of '../../component.dart';

class NavbarController extends GetxController {
  final _pageController = PageController(initialPage: 0);
  PageController get pageController => _pageController;

  final _selectedPage = 0.obs;
  set selectedPage(value) => this._selectedPage.value = value;
  int get selectedPage => this._selectedPage.value;

  final List<Widget> page = [
    HomeScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  final List<Navbar> navbarItem = [
    Navbar(icon: Icon(Iconsax.home), text: 'Home'),
    Navbar(icon: Icon(Iconsax.shopping_bag), text: 'My Cart'),
    Navbar(icon: Icon(Iconsax.setting), text: 'Setting')
  ];

  void onItemTapped(int index) {
    _selectedPage.value = index;
    _pageController.jumpToPage(index);
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    _pageController.dispose();
    super.onClose();
  }
}

class Navbar {
  Icon icon;
  String text;

  Navbar({required this.icon, required this.text});
}
