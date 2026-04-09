import 'package:behaviour/state_pattern/state/atm_state.dart';
import '../concrete_state/card_insert_state.dart';
import '../concrete_state/card_remove_state.dart';
import '../state/atm_state.dart';

class AtmMachine {
  late AtmState state;

  AtmMachine() {
    state = RemoveCardState(this);
  }

  void setState(AtmState newState) {
    state = newState;
  }

  void insertCard() {
    state.insertCard();
  }

  void removeCard() {
    state.removeCard();
  }
}