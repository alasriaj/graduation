import 'package:flutter/material.dart';
import 'package:graduation/colors.dart';

import 'NewsData.dart';

class CardModel extends StatelessWidget {
  final int itemIndex;
  final NewsDatas newsDatas;
  final Function() press;

  const CardModel(
      {Key? key,
      required this.itemIndex,
      required this.newsDatas,
      required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(
            top: Radius.circular((30)), bottom: Radius.circular(30)),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Card(
            elevation: 4,
            color: Colors.white,
            child: InkWell(
              onTap: press,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                        child: Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width * 0.30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage(newsDatas.image.toString()),
                                fit: BoxFit.cover),
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
                        width: 15,
                      ),
                      SizedBox(
                        height: 140,
                        width: MediaQuery.of(context).size.width *
                            0.60, //لوطلع معانا خطأ نقلل من حجم المسافات
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 12),
                          child: Text(
                            newsDatas.titel.toString(),
                            maxLines: 3,
                            style: TextStyle(
                              fontFamily: 'ElMessiri',
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          width: 150,
                          height: 28,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.orangeAccent[200],
                          ),
                          child: Center(
                            child: Text(
                              'تابع القراءة',
                              style: TextStyle(
                                fontFamily: 'ElMessiri',
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          newsDatas.Date.toString(),
                          style: TextStyle(
                              fontFamily: 'ElMessiri',
                              color: Color1,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Icon(
                          Icons.access_time,
                          size: 18,
                          color: Color2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
