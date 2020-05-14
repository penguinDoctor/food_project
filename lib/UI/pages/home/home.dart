import 'package:flutter/material.dart';
import 'package:favorcate/UI/pages/home/home_content.dart';
import 'home_setting.dart';

class FXHomeScreen extends StatefulWidget {
  @override
  _FXHomeScreenState createState() => _FXHomeScreenState();
}

class _FXHomeScreenState extends State<FXHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("美食广场"),
          leading: IconButton(
              icon: Icon(Icons.build),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              })),
      body: FXHomeContent(),
    );
  }
}
