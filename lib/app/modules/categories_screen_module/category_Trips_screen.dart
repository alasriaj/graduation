import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graduation/app/routes/app_pages.dart';

import '../../../app_data.dart';
import '../../../colors.dart';

class CategoryTripsScreen extends StatelessWidget {
  static const id = '/category-trips';

//final String categeryid;
//final String categeryTitle;
//CategoryTripsScreen(this.categeryid,this.categeryTitle);
  Widget buildview(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white10,
        //border: Border.all(color: Colors.black),

        borderRadius: BorderRadius.circular(10),
      ),
      height: 150,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final routeArgument =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categeryId = routeArgument['id'];
    final categeryTitle = routeArgument['title'];

    final selectedTrip = Trips_data.firstWhere((Trip) => Trip.id == categeryId);

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          title: Text(categeryTitle!),
          backgroundColor: Color1,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              RaisedButton(
                  color: Color4,
                  child: Text(
                    ' الدخول للخدمة',
                    style: TextStyle(
                        fontFamily: 'ElMessiri', fontSize: 18, color: Color1),
                  ),
                  onPressed: () => Get.toNamed(Routes.LOGIN)),
              Card(
                child: buildview(ListView.builder(
                    itemCount: selectedTrip.activities.length,
                    itemBuilder: (ctx, index) => Text(
                          selectedTrip.activities[index],
                          style:
                              TextStyle(fontFamily: 'ElMessiri', fontSize: 18),
                        ))),
              ),
              SizedBox(height: 20),
              Card(
                child: buildview(
                  ListView.builder(
                      itemCount: selectedTrip.act.length,
                      itemBuilder: (ctx, index) => Text(
                            selectedTrip.act[index],
                            style: TextStyle(
                                fontFamily: 'ElMessiri', fontSize: 18),
                          )),
                ),
              ),
              SizedBox(height: 20),
              Card(
                child: buildview(
                  ListView.builder(
                    itemCount: selectedTrip.ac.length,
                    itemBuilder: (ctx, index) => Text(
                      selectedTrip.ac[index],
                      style: TextStyle(fontFamily: 'ElMessiri', fontSize: 18),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
