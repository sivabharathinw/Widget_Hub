import 'package:abstract_factory_two/abstract_factory/abstract_fact.dart';
import 'package:abstract_factory_two/concrete_products/ios_product.dart';
import 'package:abstract_factory_two/abstract_products/products.dart';

class IOSFactory implements UIFactory {
  Button createButton() => IOSButton();
  TextWidget createText() => IOSText();
}