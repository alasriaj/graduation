import 'package:get/get.dart';
import 'package:graduation/app/modules/hombody_module/hombody_controller.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class HombodyBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HombodyController());
  }
}
