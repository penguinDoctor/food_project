import 'package:flutter/material.dart';

class FXHomeScreen extends StatefulWidget {
  @override
  _FXHomeScreenState createState() => _FXHomeScreenState();
}

class _FXHomeScreenState extends State<FXHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("首页"),),
    );
  }
}
