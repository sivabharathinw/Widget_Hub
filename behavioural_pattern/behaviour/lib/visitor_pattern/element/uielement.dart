import "../visitor/visitor.dart";
abstract class UIElement{
  void accept(Visitor visitor);
}