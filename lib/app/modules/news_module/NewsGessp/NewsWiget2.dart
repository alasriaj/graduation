import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/colors.dart';

import 'NewsData.dart';

class ScreenModel extends StatelessWidget {
  final NewsDatas newsDatas;

  const ScreenModel({Key? key, required this.newsDatas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 55, horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () => Navigator.pop(context),
                          child: Icon(
                            Icons.arrow_back,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    height: 25,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[300]),
                    child: Center(
                      child: Text(
                        ' الاخبار',
                        style: TextStyle(
                            fontFamily: 'ElMessiri', color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.access_time,
                    size: 18,
                    color: Colors.grey[500],
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    newsDatas.Date.toString(),
                    style: TextStyle(
                        fontFamily: 'ElMessiri',
                        color: Color1,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Text(
                newsDatas.titel.toString(),
                maxLines: 2,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'ElMessiri',
                  letterSpacing: 0.5,
                  height: 1.5,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 170,
                      height: 2,
                      color: Color1,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                newsDatas.titelNews.toString(),
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    letterSpacing: 2,
                    fontFamily: 'ElMessiri',
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    height: 1.6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
