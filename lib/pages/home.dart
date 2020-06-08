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
      body: Container(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) => Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.0),
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
                       child: Icon(Icons.arrow_drop_down,color: Colors.blue,),
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
                color: Colors.grey,
                height: 0.5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
