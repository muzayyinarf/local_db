import 'package:get/get.dart';

import '../controllers/create_get_storage_controller.dart';

class CreateGetStorageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateGetStorageController>(
      () => CreateGetStorageController(),
    );
  }
}
