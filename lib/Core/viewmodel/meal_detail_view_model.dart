import 'package:flutter/material.dart';
import 'package:favorcate/Core/model/detail.dart';
import 'package:favorcate/Core/service/http_request.dart';

class FXMealDetailViewModel extends ChangeNotifier {
  List<FxDetailModel> _meals = [];

  List<FxDetailModel> get meal {
    return _meals;
  }

  FXMealDetailViewModel(){
    FXRequest.request().then((res) {
      _meals = res;
      notifyListeners();
    });
  }
}
