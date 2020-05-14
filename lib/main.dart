import 'package:flutter/material.dart';
import 'UI/theme/theme.dart';
import 'Core/router/route.dart';
import 'package:provider/provider.dart';
import 'Core/viewmodel/meal_detail_view_model.dart';
import 'Core/viewmodel/meal_favor_model.dart';
main() {
//  runApp(ChangeNotifierProvider(
//    create: (ctx) => FXMealDetailViewModel(),
//    child: MyApp(),
//  ));

runApp(MultiProvider(providers: [
   ChangeNotifierProvider(
     create: (ctx)=>FXMealDetailViewModel(),
   ),
  ChangeNotifierProvider(
    create: (ctx)=>FXFavorViewModel(),
  )
],
child: MyApp(),));
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
