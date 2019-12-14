import 'package:flutter/material.dart';
import 'package:flutter_app/state_widget.dart';
import 'package:flutter_app/google_sign.dart'; // New code

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BoxDecoration _buildBackground() {
      return BoxDecoration(
        image: DecorationImage(
          image: AssetImage("BEFO.jpg"),
          fit: BoxFit.cover,
        ),
      );
    }

    Text _buildText() {
      return Text(
        'Recipes',
        style: Theme.of(context).textTheme.headline,
        textAlign: TextAlign.center,
      );
    }

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
      Container(
      child: Stack(
          children: <Widget>[
          Container(
          padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
      child: Text('Hello',
          style: TextStyle(
              fontSize: 80.0, fontWeight: FontWeight.bold)),
    ),
    Container(
    padding: EdgeInsets.fromLTRB(16.0, 200.0, 0.0, 0.0),
    child: Text('Chef',
    style: TextStyle(
    fontSize: 80.0, fontWeight: FontWeight.bold)),
    ),
    ],
    ),
    ),
    Container(
    padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
    child: Column(
    children: <Widget>[
    TextField(
    decoration: InputDecoration(
    labelText: 'USERNAME or EMAIL',
    labelStyle: TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.bold,
    color: Colors.grey),
    focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.green))),
    ),
    SizedBox(height: 20.0),
    TextField(
    decoration: InputDecoration(
    labelText: 'PASSWORD',
    labelStyle: TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.bold,
    color: Colors.grey),
    focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.green))),
    obscureText: true,
    ),
    SizedBox(height: 40.0),
    Container(
    height: 40.0,
    child: Material(
    borderRadius: BorderRadius.circular(20.0),
    shadowColor: Colors.greenAccent,
    color: Colors.green,
    elevation: 7.0,
    child: GestureDetector(
    onTap: () {},
    child: Center(
    child: Text(
    'LOGIN',
    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontFamily: 'Montserrat'),
    ),
    ),
    ),
    ),
    ),
    SizedBox(height: 40.0),
    Container(
    height: 40.0,
    child: Material(
    borderRadius: BorderRadius.circular(20.0),
    shadowColor: Colors.greenAccent,
    color: Colors.green,
    elevation: 7.0,
    child: GestureDetector(
    onTap: () {StateWidget.of(context).signInWithGoogle();},
    child: Center(
    child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    Center(
    child:
    ImageIcon(AssetImage('assets/facebook.png')),
    ),
    SizedBox(width: 10.0),
    Center(
    child: Text(
    'LOGIN WITH GOOGLE',
    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontFamily: 'Montserrat'),
    ))
    ],
    )))))]
    ),
    ), // New code
    ],
    ),
    );

  }
}