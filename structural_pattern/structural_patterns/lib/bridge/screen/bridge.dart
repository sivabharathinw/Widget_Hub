import 'package:flutter/material.dart';
import '/bridge/model/color.dart';
import '/bridge/model/shape.dart';


class BridgePatternUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//here it connects the color and shape
//pass the color to the shape
    final circle1 = Circle(80, RedColor());
    final circle2 = Circle(80, BlueColor());

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Bridge Pattern UI")),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              circle1.draw(),
              circle2.draw(),
            ],
          ),
        ),
      ),
    );
  }
}