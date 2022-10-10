import 'package:get/get.dart';

import '../modules/create_get_storage/bindings/create_get_storage_binding.dart';
import '../modules/create_get_storage/views/create_get_storage_view.dart';
import '../modules/create_shared_preferences/bindings/create_shared_preferences_binding.dart';
import '../modules/create_shared_preferences/views/create_shared_preferences_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_SHARED_PREFERENCES,
      page: () => const CreateSharedPreferencesView(),
      binding: CreateSharedPreferencesBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_GET_STORAGE,
      page: () => const CreateGetStorageView(),
      binding: CreateGetStorageBinding(),
    ),
  ];
}
