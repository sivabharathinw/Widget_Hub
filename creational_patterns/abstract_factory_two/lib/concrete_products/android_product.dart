import 'package:flutter/material.dart';
import 'package:abstract_factory_two/abstract_products/products.dart';

class AndroidButton extends Button {
  const AndroidButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => print("Android Button Pressed"),
      child: const Text("Android Button"),
    );
  }
}

class AndroidText extends TextWidget {
  const AndroidText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("Android Text", style: TextStyle(color: Colors.green));
  }
}