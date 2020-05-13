import 'package:flutter/material.dart';

class FXFavorScreen extends StatefulWidget {
  @override
  _FXFavorScreenState createState() => _FXFavorScreenState();
}

class _FXFavorScreenState extends State<FXFavorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("我的收藏"),),
    );
  }
}
