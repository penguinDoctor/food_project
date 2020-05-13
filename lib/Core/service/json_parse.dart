import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:favorcate/Core/model/home_category_model.dart';

//json解析
class JsonParse {
  static Future<List<CategoryModel>> getCategoryData() async {
    //  加载json文件
    final jsonString = await rootBundle.loadString("assets/json/category.json");

    //将json转成map/List
   final result = json.decode(jsonString);

    //将map中的内容转成对象

    final categoryResult = result["category"];

    List<CategoryModel> models = [];
    for(var json in categoryResult){

      models.add(CategoryModel.fromJson(json));
    }

    return models;
  }

  static void getMealData() {}
}
