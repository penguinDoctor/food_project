import 'package:flutter/material.dart';
import 'UI/theme/theme.dart';
import 'Core/router/route.dart';
import 'package:provider/provider.dart';
import 'Core/viewmodel/meal_detail_view_model.dart';
import 'Core/viewmodel/meal_favor_model.dart';
import 'Core/viewmodel/filter_view_model.dart';
main() {
//  runApp(ChangeNotifierProvider(
//    create: (ctx) => FXMealDetailViewModel(),
//    child: MyApp(),
//  ));

runApp(MultiProvider(providers: [
  ChangeNotifierProvider(
    create: (ctx)=> FXFilterViewModel(),
  ),
   ChangeNotifierProxyProvider<FXFilterViewModel,FXMealDetailViewModel>(
     create: (ctx)=>FXMealDetailViewModel(),
     update: (ctx,filterViewModel,mealDetailModel){
       mealDetailModel.updateFilterViewModel(filterViewModel);
       return mealDetailModel;
     },
   ),
//   ChangeNotifierProvider(
//     create: (ctx)=>FXMealDetailViewModel(),
//   ),
  ChangeNotifierProxyProvider<FXFilterViewModel,FXFavorViewModel>(
    create: (ctx)=>FXFavorViewModel(),
    update: (ctx,filterViewModel,favorModel){
      favorModel.updateViewModel(filterViewModel);
      return favorModel;
    },
  ),
//  ChangeNotifierProvider(
//    create: (ctx)=>FXFavorViewModel(),
//  ),

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
