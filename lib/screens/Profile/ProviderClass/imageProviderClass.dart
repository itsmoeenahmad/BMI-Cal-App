import 'dart:io';

import 'package:flutter/cupertino.dart';

class imageProviderClass extends ChangeNotifier {
  String selected_image_path = '';
  String imageURL = '';

  void set_image_path(File? image_file) {
    selected_image_path = image_file!.path;
    notifyListeners();
  }

  void set_image_URL_FireStore(newurl)
  {
    imageURL=newurl;
    notifyListeners();
  }
}
