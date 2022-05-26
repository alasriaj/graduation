import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graduation/app/routes/app_pages.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class calculatorController extends GetxController {
  final type = 0.obs;
  final result = ''.obs;
  var formKey = GlobalKey<FormState>().obs;
  var brithYear = TextEditingController().obs;
  var year = TextEditingController().obs;
  var nodes = <FocusNode>[].obs;
  @override
  void onInit() async {
    super.onInit();
    nodes.add(new FocusNode());
    nodes.add(new FocusNode());
    nodes.add(new FocusNode());
    nodes.add(new FocusNode());

  }


  cal() {
    if (formKey.value.currentState!.validate()) {
      formKey.value.currentState!.save();
      int ye = int.parse(brithYear.value.text.trim());
      int ye2 = int.parse(year.value.text.trim());
      DateTime dob = DateTime(ye);
      DateTime dob2 = DateTime(ye2);
      Duration dur = DateTime.now().difference(dob);
      Duration dur2 = DateTime.now().difference(dob2);
      var differenceInYears = (dur.inDays / 365).floor();
      var differenceInYears2 = (dur2.inDays / 365).floor();
      print(differenceInYears);
      if (type.value == 0) {
        if (differenceInYears >= 60 || differenceInYears2 >= 35)
          result('يحال للتقاعد'.tr);
        else
          result('حسب المدخلات لا يحال للتقاعد');
      } else {
        if (differenceInYears >= 55 || differenceInYears2 >= 30)
          result('تحال للتقاعد');
        else
          result('حسب المدخلات لا تحال للتقاعد');
      }
    }
  }


}
