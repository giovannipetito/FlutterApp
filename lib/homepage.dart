import 'package:flutter/material.dart';
import 'package:flutter_app/components/custom_button.dart';
import 'package:flutter_app/restaurantfinder/UI/main_restaurant_finder.dart';
import 'package:flutter_app/screens/permissions_screen.dart';
import 'chat/welcome_screen.dart';
import 'screens/screen1.dart';

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
                  text: 'Screen 1 (push)',
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
                  text: 'Screen 1 (pushNamed)',
                  onTap: () {
                    // Navigate to Screen 1
                    Navigator.pushNamed(context, Screen1.id);
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  text: 'Screen 2',
                  onTap: () {
                    Navigator.pushNamed(context, 'screen2');
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  text: 'Screen 3',
                  onTap: () {
                    Navigator.pushNamed(context, 'screen3');
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  text: 'Screen 4',
                  onTap: () {
                    Navigator.pushNamed(context, 'screen4');
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  text: 'Screen 5',
                  onTap: () {
                    Navigator.pushNamed(context, 'screen5');
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  text: 'Screen 6',
                  onTap: () {
                    Navigator.pushNamed(context, 'screen6');
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  text: 'Screen 7',
                  onTap: () {
                    Navigator.pushNamed(context, 'screen7');
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  text: 'Screen 8',
                  onTap: () {
                    Navigator.pushNamed(context, 'screen8');
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  text: 'Animation Screen 1',
                  onTap: () {
                    Navigator.pushNamed(context, 'animation_screen1');
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  text: 'Animation Screen 2',
                  onTap: () {
                    Navigator.pushNamed(context, 'animation_screen2');
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  text: 'Animation Screen 3',
                  onTap: () {
                    Navigator.pushNamed(context, 'animation_screen3');
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  text: 'Animation Screen 4',
                  onTap: () {
                    Navigator.pushNamed(context, 'animation_screen4');
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  text: 'Meteo',
                  onTap: () {
                    Navigator.pushNamed(context, 'meteo_screen');
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  text: 'Bitcoin Ticker',
                  onTap: () {
                    Navigator.pushNamed(context, 'price_screen');
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}