import 'package:flutter/cupertino.dart';

class InchesProviderClass extends ChangeNotifier {
  int selectedInches = 40;

  void changeInches(int newValue) {
    selectedInches = newValue;
    notifyListeners();
  }
}
