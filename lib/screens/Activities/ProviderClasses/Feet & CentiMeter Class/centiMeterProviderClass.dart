import 'package:flutter/cupertino.dart';

class centiMeterProviderClass extends ChangeNotifier
{
  int selectedcentiMeter = 5;

  void changesCentiMeter(int newValue)
  {
    selectedcentiMeter=newValue;
    notifyListeners();
  }

}