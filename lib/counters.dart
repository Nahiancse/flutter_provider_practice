import 'package:flutter/material.dart';

class Counters extends ChangeNotifier {
  var _name = 'nahian';

  String get getName {
    return _name;
  }

  void changeName() {
    _name += _name;
    notifyListeners();
  }
   
}