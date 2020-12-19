import 'package:flutter/widgets.dart';

class CountingTheNumber with ChangeNotifier {
  int number = 0;
  void increaseNumber() {
    number++;
    notifyListeners();
  }
}
