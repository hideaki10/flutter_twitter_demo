import 'package:flutter/material.dart';
import 'package:twitter_demo/pages/alert.dart';
import 'package:twitter_demo/pages/home.dart';
import 'package:twitter_demo/pages/message.dart';

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
      ..add(MessagePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        elevation: 200.0,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(16.0, 40.0, 0.0, 8.0),
                child: InkWell(
                  child: Container(
                    width: 75.0,
                    height: 75.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('images/5ienarikhmc.jpg'),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "ddd",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: null,
                      child: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 8),
                child: Text(
                  "@tte",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                color: Colors.grey,
                height: 0.5,
              ),
              Expanded(
                  child: Container(
                padding: EdgeInsets.fromLTRB(16, 10, 16, 8),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text("Profile"),
                    ),
                    ListTile(
                      leading: Icon(Icons.list),
                      title: Text("List"),
                    ),
                    ListTile(
                      leading: Icon(Icons.list),
                      title: Text("Topic"),
                    ),
                    ListTile(
                      leading: Icon(Icons.bookmark_border),
                      title: Text("Bookmark"),
                    ),
                    ListTile(
                      leading: Icon(Icons.list),
                      title: Text("Moment"),
                    ),
                    Container(
                      width: double.infinity,
                      color: Colors.grey,
                      height: 0.5,
                    ),
                    ListTile(
                      title: Text("Setting and Privacy "),
                    ),
                    ListTile(
                      title: Text("Helpcenter"),
                    ),
                  ],
                ),
              )),
              Container(
                width: double.infinity,
                color: Colors.grey,
                height: 0.5,
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      child: IconButton(
                        icon: Icon(Icons.lightbulb_outline),
                        onPressed: null(),
                      ),
                    ),
                    SizedBox(
                      child: IconButton(
                        icon: Icon(Icons.sc),
                      )
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        // backgroundColor: Colors.white,
        title: Container(
            child: Center(
          child: IconButton(
            icon: Image.asset("images/icon-48.png"),
            iconSize: 20.0,
          ),
        )),
        leading: Builder(
          builder: (context) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () => Scaffold.of(context).openDrawer(),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/5ienarikhmc.jpg'),
                  ),
                ),
              ),
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset("images/icon-48.png"),
            iconSize: 5.0,
          ),
        ],
      ),
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
        icon: Icon(Icons.notifications), title: Text("alert")));
    itemList.add(BottomNavigationBarItem(
        icon: Icon(Icons.email), title: Text("message")));
    return itemList;
  }
}
