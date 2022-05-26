import 'package:get/get.dart';
import 'package:graduation/app/modules/users_module/users_controller.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class usersBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => usersController());
  }
}
