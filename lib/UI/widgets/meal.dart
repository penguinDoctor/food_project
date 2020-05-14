import 'package:flutter/material.dart';
import 'package:favorcate/Core/model/detail.dart';
import 'operation_item.dart';
import 'package:favorcate/UI/pages/meal/meal_detail.dart';
class FXDetailScreen extends StatelessWidget {
  final FxDetailModel model;

  FXDetailScreen(this.model);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        margin: EdgeInsets.all(8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Column(
          children: <Widget>[basicInfo(context), operationInfo()],
        ),
      ),
      onTap: (){
        Navigator.of(context).pushNamed(FXMealClickScreen.routeName,arguments: model);
      },
    );
  }

  Widget basicInfo(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipRRect(
          child: Image.network(
            model.imageUrl,
            height: 250,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12)),
        ),
        Positioned(
          right: 10,
          bottom: 10,
          child: Container(
            width: 280,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(
              model.title,
              style: Theme.of(context).textTheme.display3,
            ),
            decoration: BoxDecoration(
                color: Colors.black54, borderRadius: BorderRadius.circular(6)),
          ),
        )
      ],
    );
  }

  Widget operationInfo() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          FXOperationItem(Icon(Icons.schedule), "${model.duration}min"),
          FXOperationItem(Icon(Icons.restaurant), "${model.complexStr}"),
          FXOperationItem(Icon(Icons.favorite), "未收藏")
        ],
      ),
    );
  }
}
