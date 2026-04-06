import 'package:flutter/material.dart';
import 'logger.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Example object1 = Example();
    Example object2 = Example();

    object1.log("Hello");
    object2.log("World");

    print(object1 == object2);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Singleton Example")),
        body: Center(child: Text("Check console output")),
      ),
    );
  }
}