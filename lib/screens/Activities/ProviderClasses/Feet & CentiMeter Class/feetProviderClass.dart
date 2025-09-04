import 'package:flutter/cupertino.dart';

class feetProviderClass extends ChangeNotifier
{
  int selectedFeet = 6;

  void changeFeet(int newValue)
  {
    selectedFeet=newValue;
    notifyListeners();
  }



}