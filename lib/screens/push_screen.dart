import 'package:flutter/material.dart';
import 'package:flutter_app/components/custom_button.dart';

class PushScreen extends StatefulWidget {

  static const String id = 'push_screen';

  @override
  _PushScreenState createState() => _PushScreenState();
}

class _PushScreenState extends State<PushScreen> {
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
        title: Text('Push Screen'),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Expanded(
          child: CustomButton(
            text: 'Go back',
            darkMode: true,
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
