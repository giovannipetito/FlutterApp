import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Container(
            height: 100.0,
            width: 100.0,
            // margin: EdgeInsets.all(20.0),
            // margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
            // margin: EdgeInsets.only(left: 30.0), // Per cambiare solo il margine di left (o right, top, bottom)
            margin: EdgeInsets.fromLTRB(30.0, 10.0, 50.0, 20.0),
            padding: EdgeInsets.all(20.0),
            color: Colors.white,
            child: Center(child: Text('Hello')),
          ),
        ),
      ),
    );
  }
}