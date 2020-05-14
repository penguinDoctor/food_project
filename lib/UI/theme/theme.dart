import 'package:flutter/material.dart';

//配置主题

class FXAppTheme {
  static const double smallFontSize = 16;
  static const double normalFontSize = 20;
  static const double largeFontSize = 22;
  static final Color norTextColor = Colors.black;
  static final Color darkTextColor = Colors.green;

  static final ThemeData norTheme = ThemeData(
      primarySwatch: Colors.pink,
      textTheme: TextTheme(
          body1: TextStyle(fontSize: normalFontSize, color: norTextColor),
          display1: TextStyle(fontSize: smallFontSize,),
          display2: TextStyle(fontSize: normalFontSize,),
          display3: TextStyle(fontSize: largeFontSize,color: Colors.white)),
      canvasColor: Color.fromRGBO(254, 255, 222, 1),
       accentColor: Colors.amberAccent
  );
  static final ThemeData darkTheme = ThemeData(
      primarySwatch: Colors.grey,
      textTheme: TextTheme(
          body1: TextStyle(fontSize: normalFontSize, color: darkTextColor)));
}
