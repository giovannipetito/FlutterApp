import 'package:flutter/material.dart';
import 'package:flutter_app/bmi_calculator/bmi_main_screen.dart';
import 'package:flutter_app/components/custom_button.dart';
import 'package:flutter_app/meteo/loading_screen.dart';
import 'package:flutter_app/restaurantfinder/UI/main_restaurant_finder.dart';
import 'package:flutter_app/screens/animations_screen.dart';
import 'package:flutter_app/screens/battery_level_screen.dart';
import 'package:flutter_app/screens/dice_screen.dart';
import 'package:flutter_app/screens/permissions_screen.dart';
import 'package:flutter_app/screens/price_screen.dart';
import 'package:flutter_app/quiz/quiz_screen.dart';
import 'package:flutter_app/screens/screen_3.dart';
import 'package:flutter_app/screens/custom_buttons_screen.dart';
import 'package:flutter_app/screens/snakebar_screen.dart';
import 'package:flutter_app/screens/xylophone_screen.dart';
import 'chat/welcome_screen.dart';
import 'screens/push_screen.dart';
import 'screens/screen_2.dart';

class HomePage extends StatelessWidget {
  static const String id = 'homepage';

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
                CustomButton(
                  text: 'push/pop',
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return PushScreen();
                    }));
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  text: 'pushNamed/pop',
                  onTap: () {
                    // Navigate to Screen 1
                    Navigator.pushNamed(context, PushScreen.id);
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  text: 'Screen 2',
                  onTap: () {
                    Navigator.pushNamed(context, Screen2.id);
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  text: 'Screen 3',
                  onTap: () {
                    Navigator.pushNamed(context, Screen3.id);
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  text: 'Dice Screen',
                  onTap: () {
                    Navigator.pushNamed(context, DiceScreen.id);
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  text: 'Xylophone',
                  onTap: () {
                    Navigator.pushNamed(context, XylophoneScreen.id);
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  text: 'Quiz',
                  onTap: () {
                    Navigator.pushNamed(context, QuizScreen.id);
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  text: 'BMI Calculator',
                  onTap: () {
                    Navigator.pushNamed(context, BMIMainScreen.id);
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  text: 'Custom Buttons',
                  onTap: () {
                    Navigator.pushNamed(context, CustomButtonsScreen.id);
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  text: 'Animations',
                  onTap: () {
                    Navigator.pushNamed(context, AnimationsScreen.id);
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  text: 'SnakeBar',
                  onTap: () {
                    Navigator.pushNamed(context, SnakeBarScreen.id);
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  text: 'Meteo',
                  onTap: () {
                    Navigator.pushNamed(context, LoadingScreen.id);
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  text: 'Bitcoin Ticker',
                  onTap: () {
                    Navigator.pushNamed(context, PriceScreen.id);
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  text: 'Chat',
                  onTap: () {
                    Navigator.pushNamed(context, WelcomeScreen.id);
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  text: 'Restaurant Finder',
                  onTap: () {
                    Navigator.pushNamed(context, MainRestaurantFinder.id);
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  text: 'Permissions',
                  onTap: () {
                    Navigator.pushNamed(context, PermissionsScreen.id);
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  text: 'Battery level',
                  onTap: () {
                    Navigator.pushNamed(context, BatteryLevelScreen.id);
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