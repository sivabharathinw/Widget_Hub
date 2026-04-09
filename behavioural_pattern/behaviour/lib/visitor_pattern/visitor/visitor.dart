import '../element/button_element.dart';
import '../element/text_element.dart';
abstract class Visitor {
  void visitButton(ButtonElement buttonElement);
  void visitText(TextElement textElement);

}