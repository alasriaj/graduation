import 'package:get/get.dart';
import 'package:graduation/app/modules/gassp_home_module/gassp_home_controller.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class GasspHomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GasspHomeController());
  }
}
