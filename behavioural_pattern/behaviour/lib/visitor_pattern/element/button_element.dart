import '../visitor/visitor.dart';

class ButtonElement {
  @override
  void accept(Visitor visitor){
    visitor.visitButton(this);
  }
}
