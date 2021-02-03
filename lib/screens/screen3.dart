import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                height: 100.0,
                width: 100.0,
                margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                color: Colors.white,
                child: Center(child: Text('Container 1'))),
            Container(
                height: 100.0,
                width: 100.0,
                color: Colors.blue,
                child: Center(child: Text('Container 2'))),
            SizedBox(height: 10),
            Container(
                height: 100.0,
                width: 100.0,
                color: Colors.red,
                child: Center(child: Text('Container 3'))),
            Container(width: double.infinity, height: 0.0)
          ],
        ),
      ),
    );
  }
}