import 'package:flutter/material.dart';
import '/component/component/menu_component.dart';
class MenuItem implements MenuComponent {
  String title;

  MenuItem(this.title);

  @override
  Widget build() {
    print("MenuItem.build() called → $title");
    return Text(title);
  }
}