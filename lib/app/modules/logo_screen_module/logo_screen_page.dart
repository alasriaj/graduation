import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graduation/app/modules/logo_screen_module/logo_screen_controller.dart';
import 'package:graduation/app/routes/app_pages.dart';

import '../../../model/ConrainerStyel.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class LogoScreenPage extends GetView<LogoScreenController> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 4), () {
      Get.offAllNamed(Routes.HOME);
    });
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          body: Stack(children: [
            ContainerStyel(),
            Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              SizedBox(
                height: 70,
              ),
              Center(
                  child: Text(
                'الهيئة العامة للمعاشات و التأمينات',
                style: TextStyle(
                    fontSize: 18, color: Colors.white, fontFamily: 'ElMessiri'),
              ))
            ]),
            Container(
              decoration: BoxDecoration(),
              child: Center(child: Image.asset("asset/logo.png")),
            ),
          ]),
        ));
  }
}
