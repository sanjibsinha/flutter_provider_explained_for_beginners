import 'package:flutter/widgets.dart';

class CountingTheNumber with ChangeNotifier {
  int number = 0;
  String message = 'Sanjib Sinha';
  void increaseNumber(int number) {
    number++;
    notifyListeners();
  }

  void testMessage() {
    message.startsWith('S')
        ? message = 'Hi Sanjib'
        : message = 'First letter is not S';
    notifyListeners();
  }
}
