import '../receiver/light.dart';
import 'command_interface.dart';

class TurnOnCommand implements Command {
  final Light light;

  TurnOnCommand(this.light);

  @override
  void execute() {
    light.turnOn();
  }
}