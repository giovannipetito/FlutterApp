import 'package:flutter/material.dart';
import 'bmi_input_screen.dart';

class BMIMainScreen extends StatelessWidget {

  static const String id = 'bmi_main_screen';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark(),
      theme: ThemeData(
        primaryColor: Color(0xFF0A0E21), // Il codice HEX originale è #0A0E21, ma in Flutter si sostituisce il simbolo @ con 0xFF
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        accentColor: Colors.purple,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Color(0xFFFFFFFF)), // Oppure: Colors.white
        ),
      ),
      home: BMIInputScreen(),
    );
  }
}