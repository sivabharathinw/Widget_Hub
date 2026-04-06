import 'package:flutter/material.dart';
import 'models/circle.dart';
import 'models/shape.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Shape> shapes = [];

  @override
  void initState() {
    super.initState();

    // original object
    shapes.add(Circle(Colors.blue, 80));
  }

  void cloneShape() {
    // clone last shape
    Shape newShape = shapes.last.clone();

    setState(() {
      shapes.add(newShape);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Prototype Simple")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: shapes.map((s) => s.draw()).toList(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: cloneShape,
          child: Icon(Icons.copy),
        ),
      ),
    );
  }
}