import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graduation/app/modules/gassp_home_module/gassp_home_controller.dart';

import 'Card1.dart';
import 'card2.dart';
import 'card3.dart';
import 'card4.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class GasspHomePage extends GetView<GasspHomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('عن الهيئة'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                    return CardON();
                  })),
                  child: Container(
                      width: double.infinity,
                      height: 90,
                      child: Center(
                          child: Text('كلمة رئيس مجلس الإدارة',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontFamily: 'ElMessiri'))),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black12.withOpacity(.100))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                    return CartTow();
                  })),
                  child: Container(
                      width: double.infinity,
                      height: 90,
                      child: Center(
                          child: Text('كلمة رئيس الهيئة',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontFamily: 'ElMessiri'))),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black12.withOpacity(.100))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                    return CardTherth();
                  })),
                  child: Container(
                      width: double.infinity,
                      height: 90,
                      child: Center(
                          child: Text(' عن للهيئة',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontFamily: 'ElMessiri'))),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black12.withOpacity(.100))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                    return CardFor();
                  })),
                  child: Container(
                      width: double.infinity,
                      height: 90,
                      child: Center(
                          child: Text('الأهداف الرئيسية للهيئة',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontFamily: 'ElMessiri'))),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black12.withOpacity(.100))),
                ),
              ),
            ],
          ),
        ));
  }
}
