import 'package:get/get.dart';
import 'package:graduation/app/modules/login_module/login_controller.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class loginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => loginController());
  }
}
