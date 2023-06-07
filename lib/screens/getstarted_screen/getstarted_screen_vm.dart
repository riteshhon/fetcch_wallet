import 'package:flutter/material.dart';

class GetStartedScreenViewModel extends ChangeNotifier {
  bool _isFinish = false;
  late PageController _mainController;

  bool get isFinish => _isFinish;
  PageController get mainController => _mainController;

  void initialise(BuildContext context) {
    initController();
  }

  void initController() {
    _mainController = PageController();
  }

  buttonOnSwipe(bool value) {
    _isFinish = value;
    notifyListeners();
  }
}
