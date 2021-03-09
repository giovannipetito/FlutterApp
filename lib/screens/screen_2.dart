import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {

  static const String id = 'screen_2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Center(
          child: Text("Screen 2"),
        ),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              // MainAxisAlignment.center Centra verticalmente il contenuto di
              // Column solo se Column non è contenuto all'interno di una ListView.
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('images/diamond.png'),
                  height: 100.0,
                  width: 100.0, // Viene ignorato perché c'è CrossAxisAlignment.stretch
                ),
                Image(
                  image: NetworkImage('https://www.w3schools.com/w3css/img_lights.jpg'),
                  height: 100.0,
                  width: 100.0,
                ),
                Container(
                  height: 48.0,
                  width: 100.0, // Viene ignorato perché c'è CrossAxisAlignment.stretch
                  // margin: EdgeInsets.all(20.0),
                  // margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
                  // margin: EdgeInsets.only(left: 30.0), // Per cambiare solo il margine di left (o right, top, bottom)
                  margin: EdgeInsets.fromLTRB(24.0, 10.0, 24.0, 10.0),
                  padding: EdgeInsets.all(10.0),
                  color: Colors.green,
                  child: Center(child: Text('Container 1')),
                ),
                Container(
                  height: 48.0,
                  width: 100.0, // Viene ignorato perché c'è CrossAxisAlignment.stretch
                  margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                  color: Colors.white,
                  child: Center(
                    child: Text('Container 2'),
                  ),
                ),
                SizedBox(
                    height: 10
                ),
                Container(
                  height: 48.0,
                  width: double.infinity,
                  color: Colors.red,
                  child: Center(
                    child: Text('Container 3'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}