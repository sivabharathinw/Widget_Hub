// director.dart
import 'package:builder_pattern/builders/abstract_builder/builder.dart';

import 'package:flutter/material.dart';

class CardDirector {
  CardBuilder builder;

  CardDirector(this.builder);

  void buildBlueCard() {
    builder.setTitle('Blue Card');
    builder.setDescription('This is a beautiful blue card.');
    builder.setColor(Colors.blue.shade200);
  }

  void buildRedCard() {
    builder.setTitle('Red Card');
    builder.setDescription('This is a stunning red card.');
    builder.setColor(Colors.red.shade200);
  }
}