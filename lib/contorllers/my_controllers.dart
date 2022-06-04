import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0.obs;
  void change() => count++;
  void reset() => count.value = 0;
  @override
  void onInit() {
    print('onInit');
    ever(count, (_) => print('DIJALANKAN'));//untuk menjalankan method setiap ada perubahan pada variable count di line 4
    super.onInit();
  }
}
