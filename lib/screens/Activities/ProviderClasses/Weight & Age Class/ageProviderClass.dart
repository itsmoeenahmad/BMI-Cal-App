import 'package:flutter/cupertino.dart';

class ageProviderClass extends ChangeNotifier
{
  int selectedAge = 18;

  void changeAge(int newValue)
  {
    selectedAge=newValue;
    notifyListeners();
  }


}