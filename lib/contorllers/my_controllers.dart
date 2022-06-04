import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0.obs;
  var data = 0.obs;
  void change() => count++;
  void reset() => count.value = 0;
  @override
  void onInit() {
    print('onInit');
    ever(
        count,
        (_) => print(
            'ever DIJALANKAN')); //untuk menjalankan method setiap ada perubahan pada variable count di line 4
    everAll(
        [count, data],
        (_) => print(
            'everAll DIJALANKAN')); //mirip ever tapi list. jadi setiap ada perubahan pada list variable tertentu, maka akan menjalankan suatu method
    super.onInit();
  }
}
