import 'package:flutter/material.dart';
import 'package:favorcate/Core/viewmodel/filter_view_model.dart';
import 'package:provider/provider.dart';

class FXFilterContentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[choiceWidget(context), buildChoiceWidget()],
    );
  }
}

Widget choiceWidget(BuildContext context) {
  return Container(
    alignment: Alignment.center,
    padding: EdgeInsets.all(12),
    child: Text(
      "展示你的选择",
      style: Theme.of(context)
          .textTheme
          .display3
          .copyWith(fontWeight: FontWeight.bold),
    ),
  );
}

Widget buildChoiceWidget() {
  List titles = ["无谷杂粮", "不含乳糖", "普通素食者", "严格素食者"];
  List subtitles = ["展示五谷蛋白实物", "展示不含乳糖实物", "展示普通素食相关实物", "展示严格素食相关实物"];

  return Expanded(
      child: ListView.builder(
    itemBuilder: (ctx, idx) {
      return Consumer<FXFilterViewModel>(builder: (ctx, model, child) {
        return ListTile(
          title: Text(
            titles[idx],
            style: TextStyle(fontSize: 16),
          ),
          subtitle: Text(
            subtitles[idx],
            style: TextStyle(fontSize: 14),
          ),
          trailing: Switch(
              value: getValueWithData(idx, model),
              onChanged: (value) {
                setValueWithData(idx, model, value);
              }),
        );
      });
    },
    itemCount: titles.length,
  ));
}

bool getValueWithData(int index, FXFilterViewModel model) {
  if (index == 0) return model.isGlutenFree;
  if (index == 1) return model.isLactoseFree;
  if (index == 2) return model.isVegetarian;
  if (index == 3) return model.isVegan;
}

void setValueWithData(int index, FXFilterViewModel model, bool value) {
  if (index == 0) model.isGlutenFree = value;
  if (index == 1) model.isLactoseFree = value;
  if (index == 2) model.isVegetarian = value;
  if (index == 3) model.isVegan = value;
}
