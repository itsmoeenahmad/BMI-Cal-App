import 'package:flutter/cupertino.dart';

class itemsProviderClass extends ChangeNotifier
{
  var selectedIndex = 1;

  getIndex()
  {
    return selectedIndex;
  }

  void setIndex(val)
  {
    selectedIndex=val;
    notifyListeners();
  }


}