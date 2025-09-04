import 'package:flutter/cupertino.dart';

class loadingProviderClass extends ChangeNotifier {
  bool check = true;

  void change(bool newBool) {
    check = newBool;
    notifyListeners();
  }
}
