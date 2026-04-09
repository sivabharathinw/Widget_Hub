import 'package:flutter/material.dart';
import '../mediator/form_mediator.dart';

class MediatedButton extends StatefulWidget {
  final FormMediator mediator;

  MediatedButton({required this.mediator});

  @override
  _MediatedButtonState createState() => _MediatedButtonState();
}

class _MediatedButtonState extends State<MediatedButton> {
  bool isEnabled = false;

  @override
  void initState() {
    super.initState();
//access the updatebutton variable inside mediator and update the button state
    //use setState to update the button state
    widget.mediator.updateButton = (value) {
      setState(() {
        isEnabled = value;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      //here it checks button is enabled or not if true {..this means button is clcikabke (){}}  button is clcikable  when onPress is null button is non clickable
      onPressed: isEnabled ? () {} : null,
      child: Text("Submit"),
    );
  }
}