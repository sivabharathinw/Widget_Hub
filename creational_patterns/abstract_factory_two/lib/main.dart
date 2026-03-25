import 'package:flutter/material.dart';
import 'package:abstract_factory_two/abstract_factory/abstract_fact.dart';
import 'package:abstract_factory_two/concrete_factory/android_factory.dart';
import 'package:abstract_factory_two/concrete_factory/ios_factory.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // change this to IOSFactory to switch
    UIFactory factory = AndroidFactory();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Abstract Factory Demo')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              factory.createButton(),
              const SizedBox(height: 20),
              factory.createText(),
            ],
          ),
        ),
      ),
    );
  }
}