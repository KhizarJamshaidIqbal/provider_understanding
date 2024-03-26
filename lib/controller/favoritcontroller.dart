import 'package:flutter/material.dart';

class FavoritProvider extends ChangeNotifier {
  final List<int> _selectedIteam = [];
  final currentindex = -1;

  List<int> get selectedIteam => _selectedIteam;

  void setAddFavorite(int value) {
    if (_selectedIteam.contains(value)) {
    _selectedIteam.remove(value);
  } else {
    _selectedIteam.add(value);
  }
    notifyListeners();
  }
}
