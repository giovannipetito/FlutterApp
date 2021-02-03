import 'package:flutter/material.dart';
import 'package:flutter_app/chat/login_screen.dart';
import 'package:flutter_app/chat/registration_screen.dart';
import 'chat_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  int count = 0;

  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 1), // Tutte le animazioni durano 1 secondo.
      vsync: this,
    );

    animation = ColorTween(
      begin: Colors.blue,
      end: Colors.white,
    ).animate(controller);

    controller.forward();

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose(); // Serve per non creare memory leaking.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Column(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/diamond.png'),
                    height: 60,
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  'Flash Chat',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            ChatButton(
              title: 'Log in',
              color: Colors.lightBlueAccent,
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            ChatButton(
                title: 'Register',
                color: Colors.blueAccent,
                onPressed: () {
                  Navigator.pushNamed(context, RegistrationScreen.id);
                })
          ],
        ),
      ),
    );
  }
}