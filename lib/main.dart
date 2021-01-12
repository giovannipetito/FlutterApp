import 'package:flutter/material.dart';
import 'homepage.dart';
import 'screens/screen1.dart';
import 'screens/screen2.dart';
import 'screens/screen3.dart';
import 'screens/screen4.dart';
import 'screens/screen5.dart';
import 'screens/screen6.dart';
import 'screens/screen7.dart';
import 'screens/screen8.dart';
import 'screens/screen9.dart';

// The main function is the starting point for all our Flutter apps.
void main() {
  runApp(MyApp());
}

// Oppure:
// void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Screen0(), // Indica quale screen deve essere visualizzato per primo
      // all'avvio dell'app, ma possiamo indicare la prima schermata anche nel modo seguente:
      initialRoute: '/homepage',
      routes: {
        '/homepage': (context) => HomePage(),
        '/screen1': (context) => Screen1(),
        '/screen2': (context) => Screen2(),
        '/screen3': (context) => Screen3(),
        '/screen4': (context) => Screen4(),
        '/screen5': (context) => Screen5(),
        '/screen6': (context) => Screen6(),
        '/screen7': (context) => Screen7(),
        '/screen8': (context) => Screen8(),
        '/screen9': (context) => Screen9(),
      },
    );
  }
}