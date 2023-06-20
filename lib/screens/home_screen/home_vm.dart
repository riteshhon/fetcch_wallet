import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  late int _currentIndex = 0;

  // Getters
  int get currentIndex => _currentIndex;

  void initialise(BuildContext context) {
    initController();
    print('initial');
  }

  void initController() {}

  void tabChange(int value) {
    _currentIndex = value;
    notifyListeners();
  }
}
