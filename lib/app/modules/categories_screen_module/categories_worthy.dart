import 'package:flutter/material.dart';
import 'package:graduation/colors.dart';

import '../../../worthy_data.dart';
import '../../views/widgets/category_worthy.dart';

class WorthyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // main axis alignment : start
    // cross axis alignment : center

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("خدمات المستحقين"),
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
          children: Categori_date.map(
            (categoryData) => CategoryIt(
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
