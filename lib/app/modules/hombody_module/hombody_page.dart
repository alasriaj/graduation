import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graduation/app/modules/hombody_module/hombody_controller.dart';

import '../../../colors.dart';
import '../../../darkMode.dart';
import '../../routes/app_pages.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class HombodyPage extends GetView<HombodyController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("الرئيسية")),
          actions: [
            IconButton(
                onPressed: () {
                  DarkMode().changTheme();
                },
                icon: Icon(Icons.wb_sunny_outlined)),
            IconButton(
                onPressed: () {
                  Get.toNamed(Routes.USERS);
                },
                icon: Icon(Icons.admin_panel_settings)),
          ],
          backgroundColor: Color1,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Center(
                  child: Container(
                    height: 110,
                    width: MediaQuery.of(context).size.width * 0.30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage('asset/w1.jpg'), fit: BoxFit.fill),
                      gradient: LinearGradient(
                        colors: [
                          Colors.black12,
                          Colors.black12,
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular((30)), bottom: Radius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: SizedBox(
                      width: 400,
                      height: 60,
                      child: InkWell(
                        onTap: () => Get.toNamed(Routes.GASSP_HOME),
                        child: Card(
                          elevation: 6,
                          child: Center(
                            child: Text('عن الهيئة',
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
                    width: 400,
                    height: 60,
                    child: InkWell(
                      onTap: () => Get.toNamed(Routes.SERVICES_SCREEN),
                      child: Card(
                        elevation: 6,
                        child: Center(
                          child: Text('الخدمات الإلكترونية',
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
                    width: 400,
                    height: 60,
                    child: Card(
                      elevation: 6,
                      child: Center(
                        child: Text('حاسبة معاش التقاعد',
                            style: TextStyle(
                                fontFamily: 'ElMessiri', fontSize: 18)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: SizedBox(
                    width: 400,
                    height: 60,
                    child: InkWell(
                      onTap: () => Get.toNamed(Routes.HOMBODY),
                      child: Card(
                        elevation: 6,
                        child: Center(
                          child: Text('المركز الاعلامي',
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
                    width: 400,
                    height: 60,
                    child: Card(
                      elevation: 6,
                      child: Center(
                        child: Text('الفروع',
                            style: TextStyle(
                                fontFamily: 'ElMessiri', fontSize: 18)),
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
