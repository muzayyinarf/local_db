import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class CreateGetStorageController extends GetxController {
  final box = GetStorage();
  RxString data = 'Tidak ada data'.obs;

  void simpan() async {
    print('SIMPAN DATA');

    await box.write('title', 'INI JONI');
    bacaData();
  }

  void bacaData() async {
    print('BACA DATA');

    if (box.read('title') != null) {
      data.value = box.read('title')!;
    } else {
      data.value = 'Tidak ada data';
    }
  }

  void hapusData() async {
    print('HAPUS DATA');

    if (box.read('title') != null) {
      await box.remove('title');
    }
    bacaData();
  }

  RxInt counter = 0.obs;

  void increment() {
    counter++;
    simpanCounter();
  }

  void decrement() {
    counter--;
    simpanCounter();
  }

  void simpanCounter() async {
    print('SIMPAN ANGKA');
    if (box.read('counter') != null) {
      await box.remove('counter');
    }
    await box.write('counter', counter.value);
  }

  void bacaCounter() async {
    print('BACA ANGKA:');
    if (box.read('counter') != null) {
      counter.value = await box.read('counter')! as int;
      print(counter.value);
    }
  }

  @override
  void onInit() {
    bacaData();
    bacaCounter();
    super.onInit();
  }

  void resetCounter() async {
    if (box.read('counter') != null) {
      await box.remove('counter');
      counter.value = 0;
    }
  }
}
