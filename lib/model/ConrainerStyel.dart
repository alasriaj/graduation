import 'package:flutter/material.dart';
import 'package:graduation/colors.dart';

class ContainerStyel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(
      children: [
        Container(height: double.infinity, width: double.infinity),
        Positioned(
            child: Transform.scale(
          scale: 1.3,
          child: Transform.translate(
            offset: Offset(0, -mdw / 1.7),
            child: Container(
              height: mdw,
              width: mdw,
              decoration: BoxDecoration(
                  color: Color1.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(mdw)),
            ),
          ),
        )),
        Positioned(
          top: 340,
          right: mdw / 1.4,
          child: Container(
            height: mdw,
            width: mdw,
            decoration: BoxDecoration(
                color: Color3.withOpacity(0.3),
                borderRadius: BorderRadius.circular(mdw)),
          ),
        ),
      ],
    ));
  }
}
