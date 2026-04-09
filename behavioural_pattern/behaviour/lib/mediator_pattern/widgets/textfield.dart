import 'package:flutter/material.dart';
import '../mediator/form_mediator.dart';

class MediatedTextField extends StatelessWidget {
  final FormMediator mediator;

  MediatedTextField({required this.mediator});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(hintText: "Enter text"),
      onChanged: (value) {
        mediator.notify("textChanged", value);
      },
    );
  }
}