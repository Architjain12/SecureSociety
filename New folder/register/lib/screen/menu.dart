import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  _DrawMenu createState() => _DrawMenu();
}

class _DrawMenu extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text("Himalaya"),
          accountEmail: Text("abc123@gmail.com"),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.yellow,
            child: Text("Image"),
          ),
        ),
        ListTile(
          title: new Text("Inbox"),
          leading: new Icon(Icons.mail),
        ),
        ListTile(
          title: new Text("Social"),
          leading: new Icon(Icons.people),
        ),
        ListTile(
          title: new Text("Delivery Page"),
          leading: new Icon(Icons.delivery_dining),
          onTap: () {
            Navigator.pushNamed(context, '/delivery_page');
          },
        ),
        ListTile(
          title: new Text("Privacy Policy"),
          leading: new Icon(Icons.privacy_tip_outlined),
          onTap: () {
            Navigator.pushNamed(context, '/privacy_policy');
          },
        ),
        ListTile(
          title: new Text("Settings"),
          leading: new Icon(Icons.settings),
          onTap: () {
            Navigator.pushNamed(context, '/setting');
          },
        ),
        Divider(
          height: 0.1,
        ),
        ListTile(
          title: new Text("Promotions"),
          leading: new Icon(Icons.local_offer),
        ),
        ListTile(
          title: new Text("Secure Society FAQ"),
          leading: new Icon(Icons.question_answer_outlined),
        ),
      ],
    );
  }
}
