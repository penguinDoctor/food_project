import 'package:flutter/material.dart';
import 'package:favorcate/UI/pages/main/main.dart';

class FXRoute {
  static final Map<String, WidgetBuilder> routes = {
    FXMainScreen.MainPage:(ctx)=>FXMainScreen()
  };

  static final String initialRoute =  FXMainScreen.MainPage;

  static final RouteFactory generateRoute = (settings) {
    return null;
  };

  static final RouteFactory unknownRoute = (settings) {
    return null;
  };
}
