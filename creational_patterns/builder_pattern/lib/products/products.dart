// product.dart
import 'package:flutter/material.dart';

class CustomCard {
  String title = '';
  String description = '';
  Color color = Colors.white;

  Widget render() {
    return Card(
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(title, style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 10),
            Text(description),
          ],
        ),
      ),
    );
  }
}