import 'package:flutter/material.dart';

abstract class ColorType {
  Color getColor();
}

class RedColor implements ColorType {
  @override
  Color getColor() => Colors.red;
}

class BlueColor implements ColorType {
  @override
  Color getColor() => Colors.blue;
}