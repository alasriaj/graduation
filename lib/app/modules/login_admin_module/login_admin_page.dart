import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graduation/app/modules/login_admin_module/login_admin_controller.dart';

import '../../../colors.dart';
import '../../utils/my_text.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class loginAdminPage extends GetView<loginAdminController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              // Spacer(),
              Container(height: 100),
              Container(
                child: Image.asset(
                  'asset/logo.png',
                ),
                height: 80,
              ),
              Container(height: 5),
              Text("تسجيل دخول الادارة",
                  style: MyText.subhead(context)!.copyWith(
                    color: Colors.blueGrey[300],
                  )),
              Align(
                alignment: Alignment.centerRight,
                child: Text("اسم المستخدم",
                    style: MyText.caption(context)!
                        .copyWith(color: Colors.blueGrey[200])),
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blueGrey[400]!, width: 1),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blueGrey[400]!, width: 2),
                  ),
                ),
              ),
              Container(height: 25),
              Align(
                alignment: Alignment.centerRight,
                child: Text("كلمة المرور",
                    style: MyText.caption(context)!
                        .copyWith(color: Colors.blueGrey[200])),
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blueGrey[400]!, width: 1),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blueGrey[400]!, width: 2),
                  ),
                ),
              ),
              Container(height: 25),
              Container(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color1,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20))),
                  child:
                      Text("تسجيل دخول", style: TextStyle(color: Colors.white)),
                  onPressed: () {},
                ),
              ),
              // Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
