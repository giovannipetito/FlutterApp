import 'package:flutter/material.dart';
import 'package:flutter_app/bitcointicker/price_screen.dart';
import 'package:flutter_app/restaurantfinder/UI/main_restaurant_finder.dart';
import 'package:flutter_app/screens/animation3/animation_screen3.dart';
import 'package:flutter_app/screens/animation4/animation_screen4.dart';
import 'package:flutter_app/screens/meteo/loading_screen.dart';
import 'package:flutter_app/screens/permissions_screen.dart';
import 'chat/chat_screen.dart';
import 'chat/login_screen.dart';
import 'chat/registration_screen.dart';
import 'chat/welcome_screen.dart';
import 'homepage.dart';
import 'screens/screen1.dart';
import 'screens/screen2.dart';
import 'screens/screen3.dart';
import 'screens/screen4.dart';
import 'screens/screen5.dart';
import 'screens/screen6.dart';
import 'screens/screen7.dart';
import 'screens/screen8.dart';
import 'screens/animation_screen1.dart';
import 'screens/animation2/animation_screen2.dart';

// The main function is the starting point for all our Flutter apps.
// void main() {
//   runApp(MyApp());
// }

// Oppure:
// void main() => runApp(MyApp());

Future <void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(), // Indica quale screen deve essere visualizzato per primo
      // all'avvio dell'app, ma possiamo indicare la prima schermata anche nel modo seguente:
      initialRoute: HomePage.id,
      // theme: ThemeData.dark(),
      
      theme: ThemeData.light(),
      routes: {
        HomePage.id: (context) => HomePage(),
        Screen1.id: (context) => Screen1(),
        'screen2': (context) => Screen2(),
        'screen3': (context) => Screen3(),
        'screen4': (context) => Screen4(),
        'screen5': (context) => Screen5(),
        'screen6': (context) => Screen6(),
        'screen7': (context) => Screen7(),
        'screen8': (context) => Screen8(),
        'animation_screen1': (context) => AnimationScreen1(),
        'animation_screen2': (context) => AnimationScreen2(),
        'animation_screen3': (context) => AnimationScreen3(),
        'animation_screen4': (context) => AnimationScreen4(),
        'meteo_screen': (context) => LoadingScreen(),
        'price_screen': (context) => PriceScreen(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
        MainRestaurantFinder.id: (context) => MainRestaurantFinder(),
        PermissionsScreen.id: (context) => PermissionsScreen(),
      },
    );
  }
}