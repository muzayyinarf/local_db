import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CreateSharedPreferencesController extends GetxController {
  RxString data = 'Tidak ada data'.obs;

  void simpan() async {
    print('SIMPAN DATA');
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString('name', 'INI JONI');
    bacaData();
  }

  void bacaData() async {
    print('BACA DATA');
    final prefs = await SharedPreferences.getInstance();

    if (prefs.getString('name') != null) {
      data.value = prefs.getString('name')!;
    } else {
      data.value = 'Tidak ada data';
    }
  }

  void hapusData() async {
    print('HAPUS DATA');
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('name');
    bacaData();
  }

  RxInt counter = 0.obs;

  void increment() {
    counter++;
    simpanData();
  }

  void decrement() {
    counter--;
    simpanData();
  }

  void simpanData() async {
    print('SIMPAN ANGKA');
    final prefs = await SharedPreferences.getInstance();
    if (prefs.getInt('angka') != null) {
      await prefs.remove('angka');
    }
    await prefs.setInt('angka', counter.value);
  }

  void bacaCounter() async {
    print('SIMPAN ANGKA');
    final prefs = await SharedPreferences.getInstance();
    if (prefs.getInt('angka') != null) {
      counter.value = prefs.getInt('angka')!;
    }
  }

  @override
  void onInit() {
    bacaData();
    bacaCounter();
    super.onInit();
  }

  void resetData() async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.getInt('angka') != null) {
      await prefs.remove('angka');
      counter.value = 0;
    }
  }
}
