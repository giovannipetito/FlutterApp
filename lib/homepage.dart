import 'package:flutter/material.dart';
import 'package:flutter_app/components/custom_button.dart';
import 'package:flutter_app/components/custom_text_field.dart';
import 'screens/screen1.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Home Page'),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  height: 12.0,
                ),
                CustomTextField(hint: 'Username', icon: Icon(Icons.account_circle, color: Colors.lightBlueAccent,),),
                SizedBox(
                  height: 12.0,
                ),
                CustomTextField(hint: 'Password', icon: Icon(Icons.remove_red_eye_rounded, color: Colors.lightBlueAccent,),),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  buttonText: 'Go To Screen 1 (push)',
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Screen1();
                    }));
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  buttonText: 'Go To Screen 1 (pushNamed)',
                  onTap: () {
                    // Navigate to Screen 1
                    Navigator.pushNamed(context, '/screen1');
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  buttonText: 'Go To Screen 2',
                  onTap: () {
                    Navigator.pushNamed(context, '/screen2');
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  buttonText: 'Go To Screen 3',
                  onTap: () {
                    Navigator.pushNamed(context, '/screen3');
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  buttonText: 'Go To Screen 4',
                  onTap: () {
                    Navigator.pushNamed(context, '/screen4');
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  buttonText: 'Go To Screen 5',
                  onTap: () {
                    Navigator.pushNamed(context, '/screen5');
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  buttonText: 'Go To Screen 6',
                  onTap: () {
                    Navigator.pushNamed(context, '/screen6');
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  buttonText: 'Go To Screen 7',
                  onTap: () {
                    Navigator.pushNamed(context, '/screen7');
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  buttonText: 'Go To Screen 8',
                  onTap: () {
                    Navigator.pushNamed(context, '/screen8');
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  buttonText: 'Go To Screen 9',
                  onTap: () {
                    Navigator.pushNamed(context, '/screen9');
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  buttonText: 'Go To Screen 10',
                  onTap: () {
                    Navigator.pushNamed(context, '/screen10');
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}