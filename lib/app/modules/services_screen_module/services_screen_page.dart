import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graduation/app/modules/services_screen_module/services_screen_controller.dart';

import '../categories_screen_module/categories_screen.dart';
import '../categories_screen_module/categories_worthy.dart';
import '../categories_screen_module/insured_screen.dart';
import '../categories_screen_module/visitor_screen.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class ServicesScreenPage extends GetView<ServicesScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("الخدمات الألكترونية"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular((30)), bottom: Radius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: SizedBox(
                      width: 250,
                      height: 100,
                      child: InkWell(
                        onTap: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return CategoriesScreen();
                        })),
                        child: Card(
                          elevation: 6,
                          child: Center(
                            child: Text('خدمات المتقاعدين',
                                style: TextStyle(
                                    fontFamily: 'ElMessiri', fontSize: 18)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: SizedBox(
                    width: 250,
                    height: 100,
                    child: InkWell(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return WorthyScreen();
                      })),
                      child: Card(
                        elevation: 6,
                        child: Center(
                          child: Text(' خدمات المستحقين',
                              style: TextStyle(
                                  fontFamily: 'ElMessiri', fontSize: 18)),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: SizedBox(
                    width: 250,
                    height: 100,
                    child: InkWell(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return visitorScreen();
                      })),
                      child: Card(
                        elevation: 6,
                        child: Center(
                          child: Text(' خدمات المومن علية',
                              style: TextStyle(
                                  fontFamily: 'ElMessiri', fontSize: 18)),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: SizedBox(
                    width: 250,
                    height: 100,
                    child: InkWell(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return InsuredScreen();
                      })),
                      child: Card(
                        elevation: 6,
                        child: Center(
                          child: Text('خدمات الجمهور',
                              style: TextStyle(
                                  fontFamily: 'ElMessiri', fontSize: 18)),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
