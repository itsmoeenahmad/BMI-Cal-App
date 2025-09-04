import 'package:flutter/cupertino.dart';

class savedAgainProviderClass extends ChangeNotifier
{
  bool savedCheck = false;


  void change(newBool){
    savedCheck=newBool;
    notifyListeners();
  }
}