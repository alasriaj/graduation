import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/colors.dart';

import '../../../insured_add.dart';
import '../../views/widgets/category_insured.dart';

class InsuredScreen extends StatelessWidget {
  //const WorthyScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("خدمات الجمهور"),
          backgroundColor: Color1,
        ),
        body: GridView(
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            childAspectRatio: 6 / 5,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
          ),
          children: Categorieste_add.map(
            (categoryData) => CategoryItemte(
              categoryData.id,
              categoryData.title,
              categoryData.image,
            ),
          ).toList(),
        ),
      ),
    );
  }
}
