
import 'package:flutter/material.dart';
import '../mediator/form_mediator.dart';
import '../widgets/textfield.dart';
import '../widgets/button.dart';

class LoginScreen extends StatelessWidget {
  final FormMediator mediator = FormMediator();

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Mediator Example")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            MediatedTextField(mediator: mediator),
            SizedBox(height: 20),
            MediatedButton(mediator: mediator),
          ],
        ),
      ),
        ));
  }
}