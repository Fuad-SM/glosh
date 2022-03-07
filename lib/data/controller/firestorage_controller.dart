import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:get/get.dart';

class FireStorageController extends GetxController {
  final isLoading = true.obs;
  List<String> listImage = [];

  // No Looping
  Future<String> getImage1() async {
    var image = await firebase_storage.FirebaseStorage.instance
        .ref()
        .child('promo1.jpg')
        .getDownloadURL();

    return image;
  }

  Future<String> getImage2() async {
    var image = await firebase_storage.FirebaseStorage.instance
        .ref()
        .child('promo2.jpg')
        .getDownloadURL();

    return image;
  }

  Future<String> getImage3() async {
    var image = await firebase_storage.FirebaseStorage.instance
        .ref()
        .child('promo3.jpg')
        .getDownloadURL();

    return image;
  }

  Future<String> getImage4() async {
    var image = await firebase_storage.FirebaseStorage.instance
        .ref()
        .child('promo4.jpg')
        .getDownloadURL();

    return image;
  }

  // Looping

  List<String> listUrl = ['promo1.jpg', 'promo2.jpg', 'promo3.jpg', 'promo4'];

  Future<String> downloadUrlExample(String image) async {
    var download = await firebase_storage.FirebaseStorage.instance
        .ref()
        .child(image)
        .getDownloadURL();
    return download;
  }

  List<Future<String>> batchUrl() {
    var batch = listUrl.map((val) async {
      return await downloadUrlExample(val);
    }).toList();
    print(batch);
    return batch;
  }

  void test() {
    // no looping
    getImage1().then((value) {
      isLoading.value = false;
      listImage.add(value);
    });
    getImage2().then((value) {
      isLoading.value = false;
      listImage.add(value);
    });
    getImage3().then((value) {
      isLoading.value = false;
      listImage.add(value);
    });
    getImage4().then((value) {
      isLoading.value = false;
      listImage.add(value);
    });
    // batchUrl().map((val) {
    //   val.then((value) {
    //     isLoading.value = false;
    //     listImage.add(value);
    //   });
    // });
  }

  @override
  void onInit() {
    test();
    super.onInit();
  }
}
