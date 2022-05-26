import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/app_pages.dart';

void logOut(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
            title: new Text("تسجيل خروج".tr,
                style: TextStyle(
                  fontFamily: 'NotoSans',
                )),
            content: new Text("هل تود فعلاً تسجيل خروج؟".tr,
                style: TextStyle(
                  fontFamily: 'NotoSans',
                )),
            actions: <Widget>[
              CupertinoDialogAction(
                isDefaultAction: true,
                onPressed: () => Get.back(),
                child: Text('إلغاء'.tr,
                    style: TextStyle(
                      fontFamily: 'NotoSans',
                    )),
              ),
              CupertinoDialogAction(
                child: Text('تسجيل خروج'.tr,
                    style:
                        TextStyle(fontFamily: 'NotoSans', color: Colors.red)),
                onPressed: () => Get.offAllNamed(Routes.LOGIN_ADMIN),
              )
            ],
          ));
}

Future<bool> connect() async {
  var connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.mobile) {
    return true;
  } else if (connectivityResult == ConnectivityResult.wifi) {
    return true;
  }
  return false;
}

noconnect() {
  Get.snackbar('فشل الاتصال بالانترنت'.tr,
      'تأكد من إتصالك بشبكة الواي فاي او الجوال !'.tr,
      backgroundColor: Colors.redAccent,
      icon: Icon(
        Icons.wifi_off_rounded,
        color: Colors.white,
        size: 35,
      ),
      duration: Duration(seconds: 5),
      colorText: Colors.white);
}

extension StringCasingExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1)}' : '';

  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.toCapitalized())
      .join(' ');
}

message(String msg) {
  Get.snackbar('رسالة'.tr, msg,
      backgroundColor: Colors.red,
      colorText: Colors.white,
      duration: Duration(seconds: 5));
}
