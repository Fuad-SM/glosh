part of '../../../screen.dart';

class ProductAdminUIController extends GetxController {
  final _pageController = PageController(initialPage: 0);
  PageController get pageController => _pageController;

  var _selectedChoice = 0.obs;
  void set selectedChoice(value) => this._selectedChoice.value = value;
  int get selectedChoice => this._selectedChoice.value;

  final collection = Get.put(CollectionAdminController());

  void onChoiceTapped(int index) {
    _selectedChoice.value = index;
    _pageController.animateToPage(index,
        duration: Duration(milliseconds: 400), curve: Curves.easeIn);
  }

  @override
  void onInit() {
    Get.put(ProductViewController());
    Get.put(CategoryAddController());
    collection;
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    _pageController.dispose();
  }
}

class ProductViewController extends GetxController {
  var _select = false.obs;

  set select(value) => this._select.value = value;
  get select => this._select.value;

  var _selected = false.obs;

  set selected(value) => this._selected.value = value;
  get selected => this._selected.value;
}
