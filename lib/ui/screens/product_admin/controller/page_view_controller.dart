part of '../../screen.dart';

class ProductAdminController extends GetxController {
  final _pageController = PageController(initialPage: 0);
  PageController get pageController => _pageController;

  var _selectedChoice = 0.obs;
  void set selectedChoice(value) => this._selectedChoice.value = value;
  int get selectedChoice => this._selectedChoice.value;

  final List<Widget> pageWidget = [
    ProductView(),
    CategoryView(),
  ];

  void onChoiceTapped(int index) {
    _selectedChoice.value = index;
    _pageController.animateToPage(index,
        duration: Duration(milliseconds: 400), curve: Curves.easeIn);
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    _pageController.dispose();
  }
}
