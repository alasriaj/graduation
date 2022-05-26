import 'package:get/get.dart';
import 'package:graduation/app/modules/news_module/news_controller.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class newsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => newsController());
  }
}
