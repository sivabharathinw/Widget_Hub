import 'package:behaviour/memonto_pattern/memonto/memonta.dart';
class History {
  List<Memonta> _states = [];

  void add(Memonta memento) {
    _states.add(memento);
  }
  Memonta getLast() {
    //it done the undo operation
    return _states.removeLast();
  }
}