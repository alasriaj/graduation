import 'package:graduation/app/modules/calculator_module/calculator_controller.dart';
import 'package:get/get.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class calculatorBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => calculatorController());
  }
}