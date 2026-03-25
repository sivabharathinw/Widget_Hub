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
    //just we want the factory to follow the abstract factory does not care about  what the actual class is.
    //client code depends on the abstract code not on cocrete code
    UIFactory factory = AndroidFactory();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Abstract Factory Demo')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //this factory.createbutton points to the concretee factory it calls the method inside it
              //then it calls the concerete produccts it actually implements abstract products
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