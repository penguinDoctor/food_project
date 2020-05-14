import 'package:flutter/material.dart';
import 'package:favorcate/Core/model/detail.dart';

class FXMealDetailPage extends StatelessWidget {
  final FxDetailModel model;

  FXMealDetailPage(this.model);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          imageInfo(),
          stepTitle(context, "材料"),
          stepIngredient(context),
          stepTitle(context, "制作步骤"),
          stepDetail(context)
        ],
      ),
    );
  }

  //图片
  Widget imageInfo() {
    return Image.network(model.imageUrl);
  }

  //标题组件
  Widget stepTitle(BuildContext context, String title) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .display3
            .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
  }

  //材料
  Widget stepIngredient(BuildContext context) {
    return buildMakeStep(
      context: context,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Theme.of(context).accentColor,
              child: Padding(
                child: Text(model.ingredients[index]),
                padding: EdgeInsets.symmetric(horizontal: 8),
              ),
            ),
          );
        },
        itemCount: model.ingredients.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
      ),
    );
  }

  //制作步骤

  Widget stepDetail(BuildContext context) {
    return buildMakeStep(
        context: context,
        child: ListView.separated(
          itemBuilder: (ctx, index) {
            return ListTile(
              leading:CircleAvatar(
                child: Text("#${index}"),
                backgroundColor: Colors.pink,
              ),
              title: Text(model.steps[index],style: Theme.of(context).textTheme.body1.copyWith(
                fontWeight: FontWeight.bold
              ),),
            );
          },
          separatorBuilder: (ctx, index) {
            return Divider();
          },
          itemCount: model.steps.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
        ));
  }

  //公共组件
  Widget buildMakeStep({BuildContext context, Widget child}) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      width: MediaQuery.of(context).size.width - 32,
      child: child,
    );
  }
}
