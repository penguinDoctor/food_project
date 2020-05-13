import 'package:flutter/material.dart';
import 'package:favorcate/UI/pages/favor/favor.dart';
import 'package:favorcate/UI/pages/home/home.dart';

class FXMainScreen extends StatefulWidget {
  static final String MainPage = "/";

  @override
  _FXMainScreenState createState() => _FXMainScreenState();
}

class _FXMainScreenState extends State<FXMainScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: <Widget>[FXHomeScreen(), FXFavorScreen()],
        index: this.currentIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), title: Text("收藏")),
        ],
        onTap: (idx) {
          setState(() {
            this.currentIndex = idx;
          });
        },
        currentIndex: this.currentIndex,
        selectedFontSize: 14,
        unselectedFontSize: 14,
      ),
    );
  }
}
