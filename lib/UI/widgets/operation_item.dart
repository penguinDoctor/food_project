
import 'package:flutter/material.dart';

class FXOperationItem extends StatelessWidget {
  Widget icon;
  String text;
  FXOperationItem(this.icon,this.text);
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: <Widget>[
        icon,
        SizedBox(width: 3,),
        Text(text)
      ],
    );
  }
}
