import 'package:flutter/material.dart';
import 'package:twitter_demo/pages/alert.dart';
import 'package:twitter_demo/pages/home.dart';
import 'package:twitter_demo/pages/myhome.dart';
import 'package:twitter_demo/pages/serach.dart';

class BottomNaviWidget extends StatefulWidget {
  @override
  _BottomNaviWidgetState createState() => _BottomNaviWidgetState();
}

class _BottomNaviWidgetState extends State<BottomNaviWidget> {
  int _currentIndex = 0;
  List<Widget> pages = [];

  @override
  void initState() {
    super.initState();
    pages
      ..add(HomePage())
      ..add(SerachPage())
      ..add(AlertPage())
      ..add(MyHomePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: _bottomNavItem(),
        currentIndex: _currentIndex,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  List<BottomNavigationBarItem> _bottomNavItem() {
    List<BottomNavigationBarItem> itemList = [];
    itemList.add(BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title: Text("home"),
    ));
    itemList.add(BottomNavigationBarItem(
        icon: Icon(Icons.search), title: Text("search")));
    itemList.add(BottomNavigationBarItem(
        icon: Icon(Icons.add_alert), title: Text("alert")));
    itemList.add(BottomNavigationBarItem(
        icon: Icon(Icons.email), title: Text("message")));
    return itemList;
  }
}
