import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  Color mainColor = Colors.blue;

  void changeMainColor(Color color) {
    mainColor = color;
    notifyListeners();
  }
}
