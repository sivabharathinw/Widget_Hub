// builder.dart
import 'dart:ui';

import 'package:builder_pattern/products/products.dart';

abstract class CardBuilder {
  void setTitle(String title);
  void setDescription(String description);
  void setColor(Color color);
  CustomCard getCard();
}