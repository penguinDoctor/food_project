
import 'package:flutter/material.dart';
import 'package:favorcate/Core/model/detail.dart';

class FXFavorViewModel extends ChangeNotifier {

  List<FxDetailModel> _meals = [];

  void addMeal(FxDetailModel meal){

    _meals.add(meal);
    notifyListeners();
  }

  List<FxDetailModel> get meals{

    return _meals;
}

  void removeMeal(FxDetailModel meal){

    _meals.remove(meal);
    notifyListeners();
  }

  bool isFavor(FxDetailModel meal){

    return _meals.contains(meal);
  }

  void handleData(FxDetailModel meal){

    isFavor(meal)? removeMeal(meal):addMeal(meal);
  }
}