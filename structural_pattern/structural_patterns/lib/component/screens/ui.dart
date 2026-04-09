import "package:flutter/material.dart";
import "/component/component/menu_component.dart";
import '/component/composite/Menu.dart';
import '/component/leaf/menu_item.dart';
class MyMenuUI extends StatelessWidget {
  @override
  //obj create for type interface and it belongs to Menu(complex obj or composie)

  MenuComponent menu = Menu("Main Menu", [
    MenuItem("Home"),
    Menu("Profile", [
      MenuItem("Edit Profile"),
      MenuItem("Logout"),
    ]),
    Menu("Settings", [
      MenuItem("Privacy"),
      MenuItem("Security"),
    ]),
  ]);

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Composite Pattern UI")),
      body: SingleChildScrollView(
        child: menu.build(),//here composite starts workinh
      ),
    );
  }
}