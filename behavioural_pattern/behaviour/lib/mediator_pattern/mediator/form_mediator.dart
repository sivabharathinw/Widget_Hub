class FormMediator {
  Function(bool)? updateButton;
//textfield notifiy the mediator and mediator notify the button
  void notify(String event, String data) {
    if (event == "textChanged") {
      updateButton?.call(data.isNotEmpty);
    }
  }
}