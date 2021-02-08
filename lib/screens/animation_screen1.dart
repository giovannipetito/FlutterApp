import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter_app/chat/login_screen.dart';

class AnimationScreen1 extends StatefulWidget {

  @override
  _AnimationScreen1State createState() => _AnimationScreen1State();
}

class _AnimationScreen1State extends State<AnimationScreen1>
    with TickerProviderStateMixin {
  // NOTA: with SingleTickerProviderStateMixin per le animazioni singole.
  // NOTA: with TickerProviderStateMixin per le animazioni multiple.

  int count = 0;

  // controller viene usato per le animazioni lineari.
  AnimationController controller1;
  AnimationController controller2;

  // animation viene usato per le animazioni non lineari.
  Animation animation2;
  Animation animation3;

  @override
  void initState() {
    super.initState();
    controller1 = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
      upperBound: 100.0, // L'animazione varia da 0 a 100 pixel.
    );

    controller2 = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );

    animation2 = CurvedAnimation(
      parent: controller2,
      curve: Curves.decelerate,
    );

    animation3 = ColorTween(
      begin: Colors.blue,
      end: Colors.tealAccent,
    ).animate(controller2);

    controller1.forward();
    controller2.forward();

    animation2.addStatusListener((status) {
      print(status);
      if (count < 4) {
        if (status == AnimationStatus.completed) {
          controller2.reverse(from: 1.0); // Le animazioni vanno da 100 a 1.
          count++;
        } else if (status == AnimationStatus.dismissed) {
          controller2.forward(); // Le animazioni vanno da 0 a 100.
          count++;
        }
      }
    });

    controller1.addListener(() {
      setState(() {
      });
      // print(controller1.value);
    });

    controller2.addListener(() {
      setState(() {
      });
      // print(controller2.value);
      // print(animation.value);
    });
  }

  @override
  void dispose() {
    controller1.dispose(); // Serve per non creare memory leaking.
    controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Hero(
                  tag: 'logo1',
                  child: Container(
                    color: Colors.tealAccent.withOpacity(controller2.value), // Animazione dell'opacità del background: non è compatibile se il controller ha upperBound
                    child: Image.asset('images/diamond.png'),
                    height: controller1.value, // le dimensioni del logo variano in modo lineare da 0 a 100 pixel.
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  '${controller1.value.toInt()}% Animation',
                  style: TextStyle(
                    fontSize: controller1.value / 2.5, // 40 pixel
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Hero(
                  tag: 'logo2',
                  child: Container(
                    color: Colors.tealAccent,
                    child: Image.asset('images/diamond.png'),
                    height: animation2.value * 100, // le dimensioni del logo variano in modo non lineare da 0 a 100 pixel.
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  'Animation',
                  style: TextStyle(
                    fontSize: animation2.value * 40,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Hero(
                  tag: 'logo3',
                  child: Container(
                    color: animation3.value,
                    child: Image.asset('images/diamond.png'),
                    height: 100,
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                TypewriterAnimatedTextKit(
                  text: ['Animation'],
                  textStyle: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blue
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                  child: Hero(
                    tag: 'logo',
                    child: AvatarGlow(
                      glowColor: Colors.blue,
                      endRadius: 90.0,
                      duration: Duration(milliseconds: 2000),
                      repeat: true,
                      showTwoGlows: true,
                      repeatPauseDuration: Duration(milliseconds: 100),
                      child: Material(
                        elevation: 8.0,
                        shape: CircleBorder(),
                        child: CircleAvatar(
                          backgroundColor: Colors.tealAccent[100],
                          child: Image.asset(
                            'images/diamond.png',
                            height: 60,
                          ),
                          radius: 40.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}