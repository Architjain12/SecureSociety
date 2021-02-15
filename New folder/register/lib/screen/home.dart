import 'package:flutter/material.dart';
import 'package:register/screen/menu.dart';
import 'worker.dart';
import 'card1.dart';
import 'package:register/functionality/appbar.dart';
import 'package:register/functionality/searchBar.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: true,
        title: Text("Secure Society "),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
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
      body: Center(
        child: Column(
          children: <Widget>[
            OptionCard(), //our 6 option-card
            Worker(), //this is the card of the worker
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 30, 20),
              decoration: BoxDecoration(
                boxShadow: [
                  //background color of box
                  BoxShadow(
                    color: Colors.grey[700],
                    blurRadius: 5.0, // soften the shadow
                    spreadRadius: 1.0, //extend the shadow
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              padding: EdgeInsets.all(20),
            )
          ],
        ),
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
        child: BottomBar(), //class for bottom navigation bar
      ),
    );
  }
}
