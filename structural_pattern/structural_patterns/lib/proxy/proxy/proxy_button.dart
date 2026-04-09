import '/proxy/widget/button_widget.dart';
import "package:flutter/material.dart";
class ProxyButton extends StatelessWidget {
  final bool isLoggedIn;
  final VoidCallback onPressed;

  const ProxyButton({
    required this.isLoggedIn,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    if (isLoggedIn) {
      return RealButton(onPressed: onPressed);
    } else {
      return ElevatedButton(
        onPressed: () {
          print("Please login first");
        },
        child: Text("Login Required"),
      );
    }
  }
}