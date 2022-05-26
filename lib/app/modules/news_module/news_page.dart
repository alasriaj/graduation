import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graduation/app/modules/news_module/news_controller.dart';

import 'NewsGessp/NewsItem.dart';
import 'NewsGessp/image.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class newsPage extends GetView<newsController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 5,
          foregroundColor: Colors.white,
          shadowColor: Colors.white,
          toolbarHeight: 140,
          title: Center(
            child: Text('المركز الأعلامي'),
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.add_to_queue,
                  size: 30,
                ),
                text: 'الأخبار',
              ),
              Tab(
                icon: Icon(Icons.camera_alt_outlined, size: 30),
                text: 'مكتبة الصور',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Homebodeyy(),
            ImageScreen(),
          ],
        ),
      ),
    );
  }
}
