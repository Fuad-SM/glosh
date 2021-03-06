part of '../../../screen.dart';

class GetStartController extends GetxController {
  var _current = 0.obs;
  void set current(value) => _current.value = value;
  int get current => _current.value;

  final List<String> image = [
    'assets/images/getstart1.jpg',
    'assets/images/getstart2.jpg',
    'assets/images/getstart3.jpg',
  ];

  CarouselController _carouselController = CarouselController();
  CarouselController get carouselController => _carouselController;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    _carouselController = CarouselController();
  }

  Future<void> saveStart() async {
    var check = true;
    PreferencesHelper().saveStart(check);
    Get.offAllNamed(GetXRoute.loginRouteName);
  }
}
