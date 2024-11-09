import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  String _selectedCleaning = 'initial';
  String _selectedFrequency = 'weekly';

  String get selectedCleaning => _selectedCleaning;
  String get selectedFrequency => _selectedFrequency;

  void changeSelecteedCleaning(String newval) {
    _selectedCleaning = newval;
    notifyListeners();
  }

  void changeSelecteedFrequency(String newval) {
    _selectedFrequency = newval;
    notifyListeners();
  }
}
