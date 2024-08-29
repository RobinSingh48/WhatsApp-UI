import 'package:flutter/material.dart';

class ScreenNavigator extends ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void getCurrentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
