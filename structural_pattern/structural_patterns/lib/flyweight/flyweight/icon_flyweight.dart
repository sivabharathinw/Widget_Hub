//represents the obj we want to use
import "package:flutter/material.dart";
class IconFlyweight {
  //IconData is a class from flutter it stores info  about icons
  //cerate the obj to reuse
  final IconData icon;
  IconFlyweight(this.icon);
  //method to display the icon in ui
Widget render(){
  return Icon(icon);
}
}