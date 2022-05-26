import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graduation/app/modules/login_module/login_controller.dart';
import 'package:graduation/constants.dart';

import '../../../colors.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class loginPage extends GetView<loginController> {
  TextEditingController idnoController = new TextEditingController();
  TextEditingController insurancenoController = new TextEditingController();

  GlobalKey<FormState> formkeylogin = GlobalKey<FormState>();

  signin() {
    var formdata = formkeylogin.currentState;
    if (formdata!.validate()) {
      print('valid');
    } else {
      print('not valid');
    }
  }

  String idvalidator(String? loginvalidator) {
    if (loginvalidator!.trim().isEmpty) {
      return 'يجب إدخال الرقم الوطني';
    }
    if (11 != loginvalidator.trim().length) {
      return 'يجب أن يحتوي الرقم الوطني على 11 رقم';
    }
    return '';
  }

  String insurancevalidator(String? loginvalidator) {
    if (loginvalidator!.isEmpty) {
      return 'يجب إدخال الرقم التأميني';
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.of(context).size.width;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Color1.withOpacity(0.8),
            title: Text(
              'تسجيل الدخول',
            )),
        body: Stack(children: [
          Container(
            height: double.infinity,
            width: double.infinity,
          ),
          buildPositionedTop(mdw),
          buildPositionedBottom(mdw),
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  buildContainerAvatar(mdw),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: buildFormBox(mdw),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Container buildContainerAvatar(double mdw) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Color(0xFFefdad7),
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 3,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: 25,
            right: 25,
            child: Icon(
              Icons.person_outline,
              size: 50,
              color: Color1,
            ),
          ),
        ],
      ),
    );
  }

  Positioned buildPositionedTop(double mdw) {
    return Positioned(
      child: Transform.scale(
          scale: 1.3,
          child: Transform.translate(
            offset: Offset(0, -mdw / 1.7),
            child: Container(
              height: mdw,
              width: mdw,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(mdw),
                color: Color1.withOpacity(0.8),
              ),
            ),
          )),
    );
  }

  Positioned buildPositionedBottom(double mdw) {
    return Positioned(
        top: 300,
        right: mdw / 1.5,
        child: Container(
          height: mdw,
          width: mdw,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(mdw),
            color: Color1.withOpacity(0.4),
          ),
        ));
  }

  Center buildFormBox(double mdw) {
    return Center(
      child: AnimatedContainer(
        duration: Duration(milliseconds: 600),
        curve: Curves.bounceInOut,
        child: Form(
            key: formkeylogin,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'الرقم الوطني',
                  style: TextStyle(
                    color: Color(0xff1572a1),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                buildCTextFormFieldAll(
                    'أدخل الرقم الوطني هنا', idnoController, 11, idvalidator),
                Text(
                  'الرقم التأميني',
                  style: TextStyle(
                    color: Color(0xff1572a1),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                buildCTextFormFieldAll('أدخل الرقم التأميني هنا',
                    insurancenoController, 11, insurancevalidator),
                SizedBox(
                  height: 20,
                ),
                RoundedButton(
                  color: primaryColor,
                  buttonName: 'دخول'.tr,
                  function: () => signin(),
                ),
              ],
            )),
      ),
    );
  }

  TextFormField buildCTextFormFieldAll(
      String myhinttext, logincontroller, maxlength, loginvalidator) {
    return TextFormField(
        //autovalidate: true,
        maxLength: maxlength,
        controller: logincontroller,
        validator: loginvalidator,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(4),
          hintText: myhinttext,
          filled: true,
          fillColor: Colors.white,
          //(0x4defdad7),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: Color(0x73efdad7),
            style: BorderStyle.solid,
            width: 2,
          )),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0x80efdad7),
              style: BorderStyle.solid,
              width: 2,
            ),
          ),
        ));
  }
}
