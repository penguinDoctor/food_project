import 'package:flutter/material.dart';
import 'package:favorcate/Core/service/json_parse.dart';
import 'package:favorcate/Core/model/home_category_model.dart';
import 'package:favorcate/Core/service/http_request.dart';
import 'package:favorcate/UI/pages/meal/meal.dart';

class FXHomeContent extends StatefulWidget {
  @override
  _FXHomeContent createState() => _FXHomeContent();
}

class _FXHomeContent extends State<FXHomeContent> {
  List<CategoryModel> lists = [];

  @override
  void initState() {
    // TODO: implement initState
    JsonParse.getCategoryData().then((res) {
      setState(() {
        this.lists = res;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          childAspectRatio: 1.5,
          mainAxisSpacing: 20),
      itemBuilder: (ctx, index) {
        return categoryItemWidget(this.lists[index], context);
      },
      itemCount: this.lists.length,
    );
  }
}

Widget categoryItemWidget(CategoryModel model, BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).pushNamed(FXMealScreen.routeName, arguments: model);
    },
    child: Container(
      alignment: Alignment.center,
      child: Text(model.title,
          style: Theme.of(context)
              .textTheme
              .display2
              .copyWith(fontWeight: FontWeight.bold)),
      decoration: BoxDecoration(
          color: model.finalColor,
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
              colors: [model.finalColor.withOpacity(0.7), model.finalColor])),
    ),
  );
}
