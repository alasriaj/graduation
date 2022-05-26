import 'package:get/get.dart';
import 'package:graduation/app/modules/categories_screen_module/categories_screen_controller.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class CategoriesScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategoriesScreenController());
  }
}
