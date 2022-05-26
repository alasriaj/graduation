import 'package:get/get.dart';
import 'package:graduation/app/modules/home_module/home_controller.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class homeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => homeController());
  }
}
