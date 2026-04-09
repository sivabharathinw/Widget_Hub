import '/state_pattern/state/atm_state.dart';
import '/state_pattern/context/atm_machine.dart';
import '/state_pattern/concrete_state/card_remove_state.dart';
import '/state_pattern/concrete_state/card_insert_state.dart';

class InsertCardState implements AtmState {
  final AtmMachine atm;

  InsertCardState(this.atm);

  @override
  void insertCard() {
    print("Card already inserted");
  }

  @override
  void removeCard() {
    print("Card removed");
    atm.setState(RemoveCardState(atm));
  }
}