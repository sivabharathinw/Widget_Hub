import 'visitor.dart';
import '../element/button_element.dart';
import '../element/text_element.dart';

class RenderVisitor implements Visitor {
  @override
  void visitButton(ButtonElement button) {
    print("Rendering Button");
  }

  @override
  void visitText(TextElement text) {
    print("Rendering Text");
  }
}