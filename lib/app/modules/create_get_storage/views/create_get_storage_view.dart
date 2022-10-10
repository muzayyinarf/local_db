import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/create_get_storage_controller.dart';

class CreateGetStorageView extends GetView<CreateGetStorageController> {
  const CreateGetStorageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    controller.bacaData();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get Storage'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => controller.resetCounter(),
            icon: const Icon(Icons.restore),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(controller.data.string)),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    controller.hapusData();
                  },
                  child: const Text('Hapus data'),
                ),
                ElevatedButton(
                    onPressed: () {
                      controller.simpan();
                    },
                    child: const Text('Simpan data'))
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Obx(() => Text(
                  controller.counter.toString(),
                  style: const TextStyle(
                      fontSize: 50, fontWeight: FontWeight.bold),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    controller.decrement();
                  },
                  child: const Text('-'),
                ),
                ElevatedButton(
                    onPressed: () {
                      controller.increment();
                    },
                    child: const Text('+'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
