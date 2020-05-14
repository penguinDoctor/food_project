
import 'package:flutter/material.dart';
import 'package:favorcate/Core/model/detail.dart';
import 'filter_view_model.dart';

class FXFavorViewModel extends ChangeNotifier {

  List<FxDetailModel> _meals = [];

  FXFilterViewModel _filterViewModel;
  void addMeal(FxDetailModel meal){

    _meals.add(meal);
    notifyListeners();
  }

  List<FxDetailModel> get meals{

    return _meals.where((value){
      if(_filterViewModel.isGlutenFree && !value.isGlutenFree) return false;
      if(_filterViewModel.isLactoseFree && !value.isLactoseFree) return false;
      if(_filterViewModel.isVegetarian && !value.isVegetarian) return false;
      if(_filterViewModel.isVegan && !value.isVegan) return false;
      return true;
    }
    ).toList();
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


  void updateViewModel(FXFilterViewModel filterViewModel){
    _filterViewModel = filterViewModel;
  }
}