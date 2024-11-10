import 'package:cleaningapp/model/category.dart';
import 'package:cleaningapp/model/service_model.dart';
import 'package:cleaningapp/utils/app_constants.dart';
import 'package:flutter/material.dart';

class ServiceProvider with ChangeNotifier {
  String _category = 'All';
  List<ServiceModel> _serviceList = AppConstants.serviceList;
  List<Category> _categoryList = AppConstants.categoryList;

  String get catergory => _category;
  List<ServiceModel> get serviceList => _serviceList;
  List<Category> get categoryList => _categoryList;

  List<ServiceModel> get filteredList => _category.contains('All')
      ? AppConstants.serviceList
      : _serviceList.where(
          (element) {
            return element.category.contains(_category);
          },
        ).toList();

  void updateCatergory(String newVal, bool val, int index) {
    _category = newVal;
    _categoryList[index].isSelected = val;
    notifyListeners();
  }
}
