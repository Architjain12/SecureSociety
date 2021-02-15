import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              MaterialButton(
                onPressed: () {},
                minWidth: 40,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.dashboard),
                    Text(
                      'Dashboard',
                      style: TextStyle(),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {},
                minWidth: 40,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.chat),
                    Text(
                      'chats',
                      style: TextStyle(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              MaterialButton(
                onPressed: () {},
                minWidth: 40,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.people_rounded),
                    Text(
                      'profile',
                      style: TextStyle(),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {},
                minWidth: 40,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.apartment_rounded),
                    Text(
                      'community',
                      style: TextStyle(),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
