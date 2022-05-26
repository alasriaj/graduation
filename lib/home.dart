import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
        ),
        IconButton(
            icon: Icon(
              Icons.arrow_back,
            ),
            onPressed: () => Get.toNamed(Routes.CATEGORIES_SCREEN)),
        Text('عرض الكل '),
        SizedBox(
          height: 100,
        ),
      ]),
    );
  }
}
