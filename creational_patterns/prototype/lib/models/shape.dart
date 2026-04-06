import 'package:flutter/material.dart';

abstract class Shape {
  Color color;
  Shape(this.color);
  // prototype method
  Shape clone();
  //ui method
  Widget draw();
}