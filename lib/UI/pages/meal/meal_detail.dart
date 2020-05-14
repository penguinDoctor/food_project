import 'package:flutter/material.dart';
import 'package:favorcate/Core/model/detail.dart';
import 'package:favorcate/UI/pages/detail/meal_detail.dart';
import 'package:provider/provider.dart';
import 'package:favorcate/Core/viewmodel/meal_favor_model.dart';
class FXMealClickScreen extends StatelessWidget {
  static const String routeName = "/detais";

  @override
  Widget build(BuildContext context) {
    final model = ModalRoute.of(context).settings.arguments as FxDetailModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(model.title),
      ),
      body:FXMealDetailPage(model),
      floatingActionButton:Consumer<FXFavorViewModel>(builder: (ctx,favorVM,child){

        final iconData = favorVM.isFavor(model)?Icons.favorite:Icons.favorite_border;
        final color = favorVM.isFavor(model)?Colors.red:Colors.black;
        return FloatingActionButton(onPressed: (){
          favorVM.handleData(model);
        },
        child: Icon(iconData,color: color,)
          ,
//          这里的颜色其实也可以放在全局的theme配置里面
//        backgroundColor: Colors.amberAccent,
        );
      }) ,
    );
  }
}
