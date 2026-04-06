import "package:flutter/material.dart";
import 'dart:io';
import 'package:flutter/widgets.dart';

import '../widgets/android_button.dart';
import '../widgets/ios_button.dart';
class ButtonFactory {
  static Widget createButton() {
    if (Platform.isIOS) {
      return IOSButton();
    } else {
      return AndroidButton();
    }
  }
}