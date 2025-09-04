import 'package:flutter/cupertino.dart';

class tapConditionProviderClass extends ChangeNotifier {
  Map<int, bool> checkMap = {};

  void change(int index, bool newBool) {
    checkMap[index] = newBool;
    notifyListeners();
  }

  bool getCheck(int index) {
    return checkMap[index] ?? false;
  }
}
