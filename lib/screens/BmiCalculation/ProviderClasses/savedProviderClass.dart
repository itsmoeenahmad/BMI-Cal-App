import 'package:flutter/cupertino.dart';

class savedProvideClass extends ChangeNotifier
{

  bool check = false;

  void change(newbool)
  {
    check=newbool;
    notifyListeners();
  }

}