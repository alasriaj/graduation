import 'package:flutter/material.dart';

import 'NewsData.dart';
import 'NewsWiget2.dart';

class NewsPages extends StatelessWidget {
  final NewsDatas newsDatas;

  const NewsPages({Key? key, required this.newsDatas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, bottom: 8, left: 8, right: 8),
        child: ScreenModel(
          newsDatas: newsDatas,
        ),
      ),
    );
  }
}
