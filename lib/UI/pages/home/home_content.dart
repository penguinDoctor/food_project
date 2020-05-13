import 'package:flutter/material.dart';
import 'package:favorcate/Core/service/json_parse.dart';
import 'package:favorcate/Core/model/home_category_model.dart';
class FXHomeContent  extends StatefulWidget {
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
        CategoryModel model = this.lists[index];
        return Container(
          alignment: Alignment.center,
          child: Text(model.title,
              style: Theme.of(context)
                  .textTheme
                  .display2
                  .copyWith(fontWeight: FontWeight.bold)),
          decoration: BoxDecoration(
              color: lists[index].finalColor,
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(colors: [
                lists[index].finalColor.withOpacity(0.7),
                lists[index].finalColor
              ])),
        );
      },
      itemCount: this.lists.length,
    );
  }
}
