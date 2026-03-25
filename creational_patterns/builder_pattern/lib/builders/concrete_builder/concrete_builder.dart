// concrete_builder.dart
import 'package:builder_pattern/builders/abstract_builder/builder.dart';
import 'package:builder_pattern/products/products.dart';
import 'package:flutter/material.dart';

class ConcreteCardBuilder implements CardBuilder {
  final CustomCard _card = CustomCard();

  @override
  void setTitle(String title) {
    _card.title = title;
  }

  @override
  void setDescription(String description) {
    _card.description = description;
  }

  @override
  void setColor(Color color) {
    _card.color = color;
  }

  @override
  CustomCard getCard() {
    return _card;
  }
}