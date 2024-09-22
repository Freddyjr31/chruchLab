import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CmmAppearanceKeyboard {
  static void removeInputFocus() {
    FocusManager.instance.primaryFocus?.unfocus();
    SystemChannels.textInput.invokeMethod('TextInput.hide');
  }
}
