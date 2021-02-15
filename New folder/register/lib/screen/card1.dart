import 'package:flutter/material.dart';

class OptionCard extends StatefulWidget {
  @override
  _OptionCardState createState() => _OptionCardState();
}

class _OptionCardState extends State<OptionCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              //background color of box
              BoxShadow(
                color: Colors.grey[700],
                blurRadius: 10.0, // soften the shadow
                spreadRadius: 1.0, //extend the shadow
              )
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
          margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Row(
                //this row contains 3 columns
                children: <Widget>[
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.ac_unit_sharp),
                        iconSize: 50,
                        onPressed: () {},
                        color: Colors.blue[200],
                      ),
                      Text('1'),
                      IconButton(
                        iconSize: 50,
                        icon: Icon(Icons.access_alarm),
                        onPressed: () {},
                        color: Colors.blue[200],
                      ),
                      Text('2'),
                    ],
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Column(
                    children: [
                      IconButton(
                        iconSize: 50,
                        icon: Icon(Icons.account_balance_outlined),
                        onPressed: () {},
                        color: Colors.blue[200],
                      ),
                      Text('3'),
                      IconButton(
                        iconSize: 50,
                        icon: Icon(Icons.account_balance_wallet_outlined),
                        onPressed: () {},
                        color: Colors.blue[200],
                      ),
                      Text('4'),
                    ],
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        iconSize: 50,
                        icon: Icon(Icons.accessibility_new),
                        onPressed: () {},
                        color: Colors.blue[200],
                      ),
                      Text('5'),
                      IconButton(
                        iconSize: 50,
                        icon: Icon(Icons.accessible),
                        onPressed: () {},
                        color: Colors.blue[200],
                      ),
                      Text('6'),
                    ],
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
