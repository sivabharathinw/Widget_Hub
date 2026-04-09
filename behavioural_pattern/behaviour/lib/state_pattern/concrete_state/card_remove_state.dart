import 'package:behaviour/state_pattern/state/atm_state.dart';
import 'package:behaviour/state_pattern/context/atm_machine.dart';
import 'card_insert_state.dart';
class RemoveCardState implements AtmState {
  final AtmMachine atm;

  RemoveCardState(this.atm);

  @override
  void insertCard() {
    print("Card inserted");
    atm.setState(InsertCardState(atm));
  }

  @override
  void removeCard() {
    print("No card to remove");
  }
}