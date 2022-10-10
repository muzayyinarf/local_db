import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:local_db/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan Local DB'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                controller.isDark.toggle();
                print(controller.isDark);
              },
              icon: Icon(Icons.dark_mode_outlined))
        ],
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          children: const [
            ListItem('Shared Preferences', Routes.CREATE_SHARED_PREFERENCES),
            ListItem('Get Storage', Routes.CREATE_GET_STORAGE),
          ],
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final dynamic pages;

  const ListItem(this.title, this.pages, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(pages),
      child: Card(
        child: ListTile(
          leading: const FlutterLogo(),
          title: Text(title),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
