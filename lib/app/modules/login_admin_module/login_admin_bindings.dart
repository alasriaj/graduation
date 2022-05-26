import 'package:get/get.dart';
import 'package:graduation/app/modules/login_admin_module/login_admin_controller.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class loginAdminBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => loginAdminController());
  }
}
