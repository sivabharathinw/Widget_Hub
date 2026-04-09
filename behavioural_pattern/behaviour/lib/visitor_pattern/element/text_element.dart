import 'uielement.dart';
import '../visitor/visitor.dart';
class TextElement {
  @override
  void accept(Visitor visitor){
    visitor.visitText(this);
  }
}
