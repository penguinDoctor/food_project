import 'package:flutter/material.dart';
import 'package:favorcate/UI/widgets/meal.dart';
import 'package:favorcate/Core/viewmodel/meal_favor_model.dart';
import 'package:provider/provider.dart';

class FXFavorScreen extends StatefulWidget {
  @override
  _FXFavorScreenState createState() => _FXFavorScreenState();
}

class _FXFavorScreenState extends State<FXFavorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("我的收藏"),),
      body: Consumer<FXFavorViewModel>(builder: (ctx,favorVM,child){

        return ListView.builder(itemBuilder: (ctx,index){
          return FXDetailScreen(favorVM.meals[index]);
        },
        itemCount: favorVM.meals.length,);
      }),
    );
  }
}
