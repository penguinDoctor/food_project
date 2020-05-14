import 'package:flutter/material.dart';
import 'package:favorcate/Core/model/home_category_model.dart';
import 'package:provider/provider.dart';
import 'package:favorcate/Core/viewmodel/meal_detail_view_model.dart';
import 'package:collection/collection.dart';
import 'package:favorcate/Core/model/detail.dart';
import 'package:favorcate/UI/widgets/meal.dart';

class FXMealScreen extends StatelessWidget {
  static final String routeName = "/meal";

  @override
  Widget build(BuildContext context) {
    final model = ModalRoute.of(context).settings.arguments as CategoryModel;

    return Scaffold(
      appBar: AppBar(
        title: Text(model.title),
      ),
      body: createBodyWidget(model),
    );
  }
}

//Widget createBodyWidget(CategoryModel model) {
//  return Consumer<FXMealDetailViewModel>(builder: (ctx, vModel, child) {
//    final meals = vModel.meal
//        .where((element) => element.categories.contains(model.id))
//        .toList();
//
//    return ListView.builder(
//        itemBuilder: (ctx, idx) {
//          return ListTile(
//            title: Text(meals[idx].title),
//          );
//        },
//        itemCount: meals.length);
//  });
//}

Widget createBodyWidget(CategoryModel model) {
  return Selector<FXMealDetailViewModel,List<FxDetailModel>>(

    builder: (ctx,value,child){
      return ListView.builder(itemBuilder:(ctx,idx){
        return FXDetailScreen(value[idx]);
      },
      itemCount: value.length,);
    },
    shouldRebuild: (pre,next)=>! ListEquality().equals(pre, next),
    selector:(ctx,vModel)=>vModel.meal.where((element){
      return element.categories.contains(model.id);
    }).toList(),

  );
}