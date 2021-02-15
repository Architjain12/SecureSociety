import 'package:flutter/material.dart';
import 'package:register/functionality/appbar.dart';
import 'package:register/functionality/searchBar.dart';
import 'menu.dart';

class DeliveryPage extends StatefulWidget {
  @override
  _PageBuild createState() => _PageBuild();
}

class _PageBuild extends State<DeliveryPage> {
  //bool isSwitched = false;
  List switched = [
    [false, "Amazon"],
    [false, "Flipkart"],
    [false, "Zomato"],
    [false, "Swiggy"],
    [false, "Myntra"],
    [false, "Jio Mart"],
    [false, "OLA"],
    [false, "UBER"]
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue[800],
          centerTitle: true,
          title: Text(
            "Delivery Page",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
            ),
          ),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 5.0),
                child: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    showSearch(context: context, delegate: Search());
                  },
                )),
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(Icons.notifications),
                )),
          ],
        ),
        drawer: Drawer(
          elevation: 20.0,
          child: Menu(),
        ),
        backgroundColor: Colors.black,
        body: Padding(
          padding: EdgeInsets.fromLTRB(5.0, 4.0, 3.0, 0.0),
          child: ListView(children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (int i = 0; i < switched.length; i++)
                    Container(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              '${switched[i][1]}',
                              style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 18.0,
                                  letterSpacing: 1.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(width: 1),
                          Expanded(
                            child: Switch(
                              value: switched[i][0],
                              onChanged: (value) {
                                setState(() {
                                  switched[i][0] = value;
                                  //print(switched[i][0]);
                                });
                              },
                              activeTrackColor: Colors.lightGreenAccent,
                              activeColor: Colors.green[900],
                              inactiveThumbColor: Colors.redAccent[700],
                              inactiveTrackColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/homePage');
          },
          backgroundColor: Colors.red[400],
          child: Icon(
            Icons.home,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: BottomBar(),
        ),
      ),
    );
  }
}
