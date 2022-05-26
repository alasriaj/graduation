import 'package:get/get.dart';
import 'package:graduation/app/modules/logo_screen_module/logo_screen_controller.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class LogoScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LogoScreenController());
  }
}
