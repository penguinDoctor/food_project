import 'package:flutter/material.dart';
import 'package:favorcate/UI/pages/filter/filter.dart';

class FXHomeSettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
        width:260,
        color: Theme.of(context).accentColor,
        child: Drawer(
          child: Column(
            children: <Widget>[
              settingHeadView(context),
              settingBodyWidget(Icon(Icons.restaurant), "进餐", (){
                Navigator.of(context).pop();
              }),
              settingBodyWidget(Icon(Icons.settings), "过滤", (){
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(FXFilterPage.routeName);
              })
            ],
          ),
        ));
  }
}
Widget settingHeadView(BuildContext context){

  return Container(
    color: Theme.of(context).accentColor,
    width: double.infinity,
    height: 150,
    child: Text("开始动手",style:TextStyle(color: Colors.black,fontWeight:FontWeight.bold,fontSize: 30),),
    alignment: Alignment(0,0.6),
  );
}

Widget settingBodyWidget(Widget icon,String text,Function callback){

  return ListTile(
    leading: icon,
    title: Text(text,style: TextStyle(color:Colors.black,fontSize: 18,fontWeight: FontWeight.w400),),
    onTap: callback,
  );

}