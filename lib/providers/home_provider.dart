import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier {
  final _selectedCleaning = ValueNotifier<String>('');
  String get selectedCleaning => _selectedCleaning.value;

  void changeSelecteedCleaning(String newval) {
    _selectedCleaning.value = newval;
    notifyListeners();
  }
}
