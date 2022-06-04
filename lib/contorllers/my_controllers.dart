import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0.obs;
  var data = 0.obs;
  void change() => count++;
  void reset() => count.value = 0;
  @override
  void onInit() {
    //dijalankan ketika class belum dipanggil
    print('onInit');
    ever(
        count,
        (_) => print(
            'ever DIJALANKAN')); //untuk menjalankan method setiap ada perubahan pada variable count di line 4
    everAll(
        [count, data],
        (_) => print(
            'everAll DIJALANKAN')); //mirip ever tapi list. jadi setiap ada perubahan pada list variable tertentu, maka akan menjalankan suatu method
    once(count,
        (_) => print('once DIJALANKAN')); //hanya menjalankan method sekali
    debounce(count, (_) => print('debounce DIJALANKAN'),
        time: Duration(
            seconds:
                3)); //setelah onInit dijalankan, maka dalam durasi 3 detik baru dijalankan sesuatu
    //berguna untuk method searching. misal mencari jakarta, maka setelah selesai ngetik dari huruf terakhir, 3 detik berikutnya method dijalankan
    interval(count, (_) => print('interval DIJALANKAN'),
        time:
            Duration(seconds: 3)); //setiap 3 detik maka akan mejalankan method
    super.onInit();
  }
}
