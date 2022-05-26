//import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

import 'NewsData.dart';
import 'NewsWiget.dart';
import 'home2.dart';

class Homebodeyy extends StatelessWidget {
  final int? item;
  final NewsDatas? newsDatas;

  const Homebodeyy({Key? key, this.item, this.newsDatas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          // Padding(
          //   padding: const EdgeInsets.only(top: 10.0,bottom: 10,right: 10,left: 10),
          //   child: Container(
          //     height:290,
          //     width: double.infinity,
          //     child: Carousel(
          //       dotBgColor: Colors.black.withOpacity(0.4),
          //       boxFit: BoxFit.cover,
          //       dotIncreasedColor: Color4,
          //
          //       images: [
          //         NetworkImage('http://gasspyemen.org/images/slider/slider_2.jpg',
          //         ),
          //         NetworkImage('http://gasspyemen.org/images/slider/slider_4.jpg'),
          //
          //         NetworkImage('http://gasspyemen.org/images/slider/slider_7.jpg'),
          //         NetworkImage('http://gasspyemen.org/images/slider/slider_3.jpg'),
          //
          //       ],
          //     ),
          //
          //   ),
          // ),

          Expanded(
              child: Stack(children: [
            ListView.builder(
              itemCount: NewsData_data.length,
              itemBuilder: (context, index) => CardModel(
                itemIndex: index,
                newsDatas: NewsData_data[index],
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NewsPages(
                          newsDatas: NewsData_data[index],
                        ),
                      ));
                },
              ),
            ),
          ]))
        ],
      ),
    ));
  }
}
