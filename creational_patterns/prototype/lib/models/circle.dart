import 'package:flutter/material.dart';
import 'shape.dart';

class Circle extends Shape {
  double radius;
  //first super(color)means  color is paased to the parent class constructor
  //then color and radius stored in circle class
  Circle(Color color, this.radius) : super(color);
  @override
  Shape clone() {
    return Circle(color, radius);
  }
  @override
  Widget draw() {
    return Container(
      margin: EdgeInsets.all(10),
      height: radius,
      width: radius,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}