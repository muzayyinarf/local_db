import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  final box = GetStorage();
  RxBool isDark = false.obs;

  @override
  void onInit() {
    RxBool isDark = false.obs;
    super.onInit();
  }
}
