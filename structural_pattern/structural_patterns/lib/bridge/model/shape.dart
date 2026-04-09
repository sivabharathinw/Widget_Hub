import 'package:flutter/material.dart';
import 'color.dart';

abstract class Shape {
  ColorType color;

  Shape(this.color);

  Widget draw();
}

class Circle extends Shape {
  double radius;
//it gets radius value and color from Circle class
  Circle(this.radius, super.color);

  @override
  Widget draw() {
    return Container(
      margin: EdgeInsets.all(10),
      height: radius,
      width: radius,
      decoration: BoxDecoration(
        color: color.getColor(),
        shape: BoxShape.circle,
      ),
    );
  }
}