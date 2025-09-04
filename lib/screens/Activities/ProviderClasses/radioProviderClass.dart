import 'package:flutter/cupertino.dart';

class radioProviderClass extends ChangeNotifier
{
  int selectedValue =1;


  void changeValue(int newValue)
  {
    selectedValue=newValue;
    notifyListeners();
  }


}