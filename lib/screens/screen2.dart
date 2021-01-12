import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Center(
            child: Text("I am rich"),
          ),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
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
            ],
          ),
        ),
      ),
    );
  }
}