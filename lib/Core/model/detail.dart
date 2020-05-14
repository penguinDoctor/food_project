// To parse this JSON data, do
//
//     final fxDetailModel = fxDetailModelFromJson(jsonString);

import 'dart:convert';

FxDetailModel fxDetailModelFromJson(String str) => FxDetailModel.fromJson(json.decode(str));

String fxDetailModelToJson(FxDetailModel data) => json.encode(data.toJson());

List<String> complexes = ["简单","中等","复杂"];

class FxDetailModel {
  String id;
  List<String> categories;
  String title;
  int affordability;
  int complexity;
  String complexStr;
  String imageUrl;
  int duration;
  List<String> ingredients;
  List<String> steps;
  bool isGlutenFree;
  bool isVegan;
  bool isVegetarian;
  bool isLactoseFree;

  FxDetailModel({
    this.id,
    this.categories,
    this.title,
    this.affordability,
    this.complexity,
    this.complexStr,
    this.imageUrl,
    this.duration,
    this.ingredients,
    this.steps,
    this.isGlutenFree,
    this.isVegan,
    this.isVegetarian,
    this.isLactoseFree,
  });

  factory FxDetailModel.fromJson(Map<String, dynamic> json) => FxDetailModel(
      id: json["id"],
      categories: List<String>.from(json["categories"].map((x) => x)),
  title: json["title"],
  affordability: json["affordability"],
  complexity: json["complexity"],
  complexStr: complexes[json["complexity"]],
  imageUrl: json["imageUrl"],
  duration: json["duration"],
  ingredients: List<String>.from(json["ingredients"].map((x) => x)),
  steps: List<String>.from(json["steps"].map((x) => x)),
  isGlutenFree: json["isGlutenFree"],
  isVegan: json["isVegan"],
  isVegetarian: json["isVegetarian"],
  isLactoseFree: json["isLactoseFree"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "categories": List<dynamic>.from(categories.map((x) => x)),
    "title": title,
    "affordability": affordability,
    "complexity": complexity,
    "imageUrl": imageUrl,
    "duration": duration,
    "ingredients": List<dynamic>.from(ingredients.map((x) => x)),
    "steps": List<dynamic>.from(steps.map((x) => x)),
    "isGlutenFree": isGlutenFree,
    "isVegan": isVegan,
    "isVegetarian": isVegetarian,
    "isLactoseFree": isLactoseFree,
  };
}
