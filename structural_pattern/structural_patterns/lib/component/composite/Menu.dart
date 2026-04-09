import "package:flutter/material.dart";
import '/component/component/menu_component.dart';

class Menu implements MenuComponent{
    String title;
    List<MenuComponent> children;

    Menu(this.title, this.children);

  @override
  Widget build(){
    return Column(
      children: children.map((child) => child.build()).toList(),
    );
  }
}
