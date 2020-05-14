import 'package:flutter/material.dart';
import 'package:favorcate/Core/model/detail.dart';
import 'package:favorcate/Core/service/http_request.dart';
import 'filter_view_model.dart';

class FXMealDetailViewModel extends ChangeNotifier {
  List<FxDetailModel> _meals = [];

  FXFilterViewModel _filterViewModel;
  List<FxDetailModel> get meal {
    return _meals.where((value){
      if(_filterViewModel.isGlutenFree && !value.isGlutenFree) return false;
      if(_filterViewModel.isLactoseFree && !value.isLactoseFree) return false;
      if(_filterViewModel.isVegetarian && !value.isVegetarian) return false;
      if(_filterViewModel.isVegan && !value.isVegan) return false;

      return true;
    }).toList();
  }

  void updateFilterViewModel(FXFilterViewModel filterViewModel){
    _filterViewModel = filterViewModel;
  }

  FXMealDetailViewModel(){
    FXRequest.request().then((res) {
      _meals = res;
      notifyListeners();
    });
  }
}
