import 'package:get/get.dart';
import 'package:graduation/app/modules/services_screen_module/services_screen_controller.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class ServicesScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ServicesScreenController());
  }
}
