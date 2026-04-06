import 'package:flutter/cupertino.dart';

class IOSButton extends StatelessWidget {
  const IOSButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () {},
      child: const Text("iOS Button"),
    );
  }
}