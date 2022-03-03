part of '../../screen.dart';

class ProductAdminController extends GetxController {
  var _pageController = PageController(initialPage: 0);
  PageController get pageController => _pageController;
  List<int> choice = [0, 1];

  var _selectedChoice = 0.obs;
  void set selectedChoice(value) => this._selectedChoice.value = value;
  int get selectedChoice => this._selectedChoice.value;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    _pageController = PageController();
  }
}
