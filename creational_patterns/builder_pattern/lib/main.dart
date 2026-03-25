// main.dart
import 'package:flutter/material.dart';
import 'package:builder_pattern/builders/concrete_builder/concrete_builder.dart';
import 'package:builder_pattern/director/director.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ConcreteCardBuilder builder = ConcreteCardBuilder();
    CardDirector director = CardDirector(builder);

    // Build a blue card
    director.buildBlueCard();
    var blueCard = builder.getCard();

    // Build a red card
    director.buildRedCard();
    var redCard = builder.getCard();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Builder Pattern Demo')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            blueCard.render(),
            const SizedBox(height: 20),
            redCard.render(),
          ],
        ),
      ),
    );
  }
}