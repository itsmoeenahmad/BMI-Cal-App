import 'package:flutter/cupertino.dart';

class weightProviderClass extends ChangeNotifier
{
  int selectedWeight = 60;

  void changeWeight(int newValue)
  {
    selectedWeight=newValue;
    notifyListeners();
  }


}