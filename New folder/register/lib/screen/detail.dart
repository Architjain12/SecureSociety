import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:register/screen/delivery_page.dart';
import 'package:register/screen/home.dart';
import 'package:register/screen/privacy_policy.dart';
import 'package:register/screen/setting.dart';
import 'package:register/services/firestoreService.dart';
import 'submit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class details extends StatefulWidget {
  details({Key key}) : super(key: key);

  @override
  _detailsState createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    FirestoreService firestoreService = Provider.of<FirestoreService>(context);
    //var heightPiece = MediaQuery.of(context).size.height / 10;
    //var widthPiece = MediaQuery.of(context).size.width ;
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => enterDetail(),
        '/submitPage': (context) => submit(),
        '/homePage': (context) => Home(),
        '/setting': (context) => AppSetting(),
        '/privacy_policy': (context) => Privacy(),
        '/delivery_page': (context) => DeliveryPage(),
      },
    );
  }
}

class enterDetail extends StatefulWidget {
  enterDetail({Key key}) : super(key: key);

  @override
  _enterDetailState createState() => _enterDetailState();
}

class _enterDetailState extends State<enterDetail> {
  final _formKey = GlobalKey<FormState>();
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  PersonData person = PersonData();
  @override
  Widget build(BuildContext context) {
    FirestoreService firestoreService = Provider.of<FirestoreService>(context);
    person.mobileNumber = firestoreService.phoneNo;
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Register"),
      ),
      body: ListView(children: [
        Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Enter your First Name',
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter First Name';
                          }
                          person.fName = value;
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Enter your Last Name',
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter Last Name';
                          }
                          person.lName = value;
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Enter your House number, ex. A103',
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter House number';
                          }
                          person.houseNumber = value;
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Enter your email',
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter email';
                          }
                          person.eMail = value;
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: ElevatedButton(
                        onPressed: () {
                          // Validate will return true if the form is valid, or false if
                          // the form is invalid.
                          if (_formKey.currentState.validate()) {
                            call(firestore, person);
                            // Process data.
                            //Navigator.of(context).push(MaterialPageRoute(builder:(context) => submit()));
                            Navigator.pushNamed(
                              context,
                              '/homePage',
                            );
                          }
                        },
                        child: Text('Submit',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

void call(var db, var person) {
  db.collection("resident").add({
    'fName': '${person.fName}',
    'lName': '${person.lName}',
    'mobileNumber': '${person.mobileNumber}',
    'email': '${person.eMail}',
    'houseNumber': '${person.houseNumber}',
  });
}

class PersonData {
  var fName;
  var lName;
  var houseNumber;
  var mobileNumber;
  var eMail;
}
