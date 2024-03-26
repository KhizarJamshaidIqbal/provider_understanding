import 'package:flutter/material.dart';

class CounterProviderController extends ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;

  void setCounterProvider() {
    _counter++;
    notifyListeners();
  }
}
