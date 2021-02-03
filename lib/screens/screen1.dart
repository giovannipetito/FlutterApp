import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {

  @override
  void initState() {
    super.initState();
    print('initState called');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('deactivate called');
  }

  @override
  Widget build(BuildContext context) {

    print('build called');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Screen 1'),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.red,
          child: Text('Go Back (pop)'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}