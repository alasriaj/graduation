import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graduation/app/modules/cart_module/cart_controller.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class cartPage extends GetView<cartController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('cart Page')),
      body: Container(
        child: Obx(()=>Container(child: Text(controller.obj),)),
      ),
    );
  }
}
