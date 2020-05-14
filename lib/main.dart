import 'package:flutter/material.dart';
import 'UI/theme/theme.dart';
import 'Core/router/route.dart';
import 'package:provider/provider.dart';
import 'Core/viewmodel/meal_detail_view_model.dart';

main() {
  runApp(ChangeNotifierProvider(
    create: (ctx) => FXMealDetailViewModel(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "美食广场",
      debugShowCheckedModeBanner: false,
      theme: FXAppTheme.norTheme,
      initialRoute: FXRoute.initialRoute,
      routes: FXRoute.routes,
      onGenerateRoute: FXRoute.generateRoute,
      onUnknownRoute: FXRoute.unknownRoute,
    );
  }
}
