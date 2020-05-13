import 'package:flutter/material.dart';

class CategoryModel{

  String id;
  String title;
  String color;
  Color finalColor;

  CategoryModel(this.id,this.title,this.color);

  CategoryModel.fromJson(Map<String,dynamic> json){
    id = json["id"];
    title = json["title"];
    color = json["color"];
    int colorInt = int.parse(color,radix: 16);
    finalColor = Color((0xFF000000 | colorInt));
  }

  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = Map();
    data["id"] = this.id;
    data["title"] = this.title;
    data["color"] = this.color;
    return data;
  }

}