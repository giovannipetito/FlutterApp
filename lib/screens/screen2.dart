import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Center(
          child: Text("I am rich"),
        ),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Image(
                image: AssetImage('images/diamond.png'),
                height: 200.0,
                width: 200.0,
              ),
              Image(
                image: NetworkImage('https://www.w3schools.com/w3css/img_lights.jpg'),
                height: 200.0,
                width: 200.0,
              ),
              Container(
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
            ],
          ),
        ),
      ),
    );
  }
}