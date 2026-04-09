import 'package:flutter/material.dart';

class RealButton extends StatelessWidget {
  final VoidCallback onPressed;

  const RealButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text("Click Me"),
    );
  }
}