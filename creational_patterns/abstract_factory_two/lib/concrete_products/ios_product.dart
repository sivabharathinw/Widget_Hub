import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:abstract_factory_two/abstract_products/products.dart';

class IOSButton extends Button {
  const IOSButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () => print("iOS Button Pressed"),
      child: const Text("iOS Button"),
    );
  }
}

class IOSText extends TextWidget {
  const IOSText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("iOS Text", style: TextStyle(color: Colors.blue));
  }
}