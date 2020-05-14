
import 'package:flutter/material.dart';

class FXOperationItem extends StatelessWidget {
  Widget icon;
  String text;
  Color color;
  FXOperationItem(this.icon,this.text,{this.color = Colors.black});
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: <Widget>[
        icon,
        SizedBox(width: 3,),
        Text(text,style: TextStyle(color: color),)
      ],
    );
  }
}
