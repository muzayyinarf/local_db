import 'package:get/get.dart';

import '../controllers/create_shared_preferences_controller.dart';

class CreateSharedPreferencesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateSharedPreferencesController>(
      () => CreateSharedPreferencesController(),
    );
  }
}
