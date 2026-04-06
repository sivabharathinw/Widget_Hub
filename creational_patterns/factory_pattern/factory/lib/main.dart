import "package:flutter/material.dart";
import "../factory/button_factory.dart";
void main(){
  runApp(HomeScreen());
}


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Factory Pattern"),
      ),
      body: Center(
        child: ButtonFactory.createButton(),
      ),
    );
  }
}