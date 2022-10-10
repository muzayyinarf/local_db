import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:local_db/app/modules/home/controllers/home_controller.dart';

import 'app/routes/app_pages.dart';

void main() {
  HomeController homeC = Get.put(HomeController());
  print(homeC.isDark);
  runApp(
    Obx(() => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: homeC.isDark.value ? ThemeData.dark() : ThemeData.light(),
          title: "Application",
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
        )),
  );
}
