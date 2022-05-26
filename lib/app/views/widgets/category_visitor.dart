import 'package:flutter/material.dart';

import '../../../colors.dart';
import '../../modules/categories_screen_module/category_visitor_screen.dart';

class CategoryIte extends StatelessWidget {
  final String id;

  final String title;
  final String image;

  CategoryIte(
    this.id,
    this.title,
    this.image,
  );

  void selectCategory(BuildContext ctx) {
    Navigator.push(
        ctx,
        MaterialPageRoute(
            builder: (context) {
              return CategoryvisitorScreen();
            },
            settings: RouteSettings(arguments: {
              'id': id,
              'title': title,
            })));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white70,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              image,
              height: 40,
              fit: BoxFit.cover,
              color: Color1,
            ),
            Text(
              title,
              style: TextStyle(
                  color: Color1,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'ElMessiri',
                  fontSize: 18),
              // style: Theme.of(context).textTheme.headline6,
            )
          ],
        ),
      ),
    );
  }
}
