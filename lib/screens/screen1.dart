import 'package:flutter/material.dart';
import 'package:flutter_app/components/custom_button.dart';

class Screen1 extends StatefulWidget {
  static const String id = 'screen1';

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
        child: CustomButton(
          text: 'Go back',
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
