import 'package:flutter/material.dart';
import 'UI/theme/theme.dart';
main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: FXAppTheme.norTheme,
      home: Scaffold(
        appBar: AppBar(
            title:Text("美食广场")
        ),
      ),
    );
  }
}
