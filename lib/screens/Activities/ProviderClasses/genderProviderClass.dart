import 'package:flutter/foundation.dart';

class genderProviderClass extends ChangeNotifier
{
  bool selectedValue = false;

  //False for Female
  //True for Male

  void change()
  {
    print('before is ${selectedValue}');
    selectedValue=!selectedValue;
    notifyListeners();
    print('after is ${selectedValue}');
  }

}