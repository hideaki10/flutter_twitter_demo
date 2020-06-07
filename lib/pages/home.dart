import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
      body: Container(
        child: ListView.builder(
              itemCount: 5,
              itemBuilder:(context,index)=>Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding:EdgeInsets.all(8.0),
                        child: Container(
                          width: 40.0,
                          height: 40.0,
                          child: Text("ddd"),
                        ),
                      ),
                    ],
                  ),
                ],
              ), 
          ),
      ),
      drawer: Drawer(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                child: Text("ddd"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
