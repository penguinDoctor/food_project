import 'package:flutter/material.dart';

class FXFilterViewModel extends ChangeNotifier {
  //五谷蛋白
  bool _isGlutenFree = false;

  //有无乳糖
  bool _isLactoseFree = false;

  //普通素食主义
  bool _isVegetarin = false;

  //严格素食主义
  bool _isVegan = false;


  bool get isGlutenFree => _isGlutenFree;

  set isGlutenFree(bool value) {
    _isGlutenFree = value;

    notifyListeners();
  }

  bool get isVegan => _isVegan;

  set isVegan(bool value) {
    _isVegan = value;
    notifyListeners();
  }

  bool get isVegetarian => _isVegetarin;

  set isVegetarian(bool value) {
    _isVegetarin = value;
    notifyListeners();
  }

  bool get isLactoseFree => _isLactoseFree;

  set isLactoseFree(bool value) {
    _isLactoseFree = value;
    notifyListeners();
  }
}
