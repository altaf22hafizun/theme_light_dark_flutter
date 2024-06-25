import 'package:flutter/material.dart';

class UiProvider extends ChangeNotifier {
  bool _isDark = false;
  bool get isDark => _isDark;

  //Toggle Dark Theme
  changeTheme() {
    _isDark = !isDark;
    notifyListeners();
  }

  init() {
    notifyListeners();
  }
}
