import 'package:abstract_factory_two/abstract_products/products.dart';
abstract class UIFactory {
  Button createButton();
  TextWidget createText();
}