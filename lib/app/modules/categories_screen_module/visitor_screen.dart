import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/colors.dart';
import 'package:graduation/visitor_data.dart';

import '../../views/widgets/category_visitor.dart';

class visitorScreen extends StatelessWidget {
  //const WorthyScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("خدمات المومن علية"),
          backgroundColor: Color1,
        ),
        body: GridView(
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            childAspectRatio: 6 / 5,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          children: Category_date.map(
            (categoryData) => CategoryIte(
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
