import 'package:abstract_factory_two/abstract_factory/abstract_fact.dart';
import 'package:abstract_factory_two/concrete_products/android_product.dart';
import 'package:abstract_factory_two/abstract_products/products.dart';
class AndroidFactory implements UIFactory {
  Button createButton() => AndroidButton();
  TextWidget createText() => AndroidText();
}