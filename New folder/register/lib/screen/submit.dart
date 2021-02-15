import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class submit extends StatefulWidget {
  submit({Key key}) : super(key: key);

  @override
  _submitState createState() => _submitState();
}

class _submitState extends State<submit> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                  color: Colors.yellow[700],
                  margin: EdgeInsets.all(10),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                        "Your Details has been send to Society President for verification",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black)),
                  )),
              Card(
                  color: Colors.yellow[700],
                  margin: EdgeInsets.all(10),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text("Hi ${data['fName']}, Your App will Start Soon",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black)),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
