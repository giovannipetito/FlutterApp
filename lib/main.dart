import 'package:flutter/material.dart';
import 'package:flutter_app/bmi_calculator/bmi_main_screen.dart';
import 'package:flutter_app/meteo/loading_screen.dart';
import 'package:flutter_app/screens/price_screen.dart';
import 'package:flutter_app/restaurantfinder/UI/main_restaurant_finder.dart';
import 'package:flutter_app/screens/snakebar_screen.dart';
import 'package:flutter_app/screens/battery_level_screen.dart';
import 'package:flutter_app/screens/permissions_screen.dart';
import 'chat/chat_screen.dart';
import 'chat/login_screen.dart';
import 'chat/registration_screen.dart';
import 'chat/welcome_screen.dart';
import 'homepage.dart';
import 'screens/push_screen.dart';
import 'screens/screen_2.dart';
import 'screens/screen_3.dart';
import 'screens/dice_screen.dart';
import 'screens/xylophone_screen.dart';
import 'quiz/quiz_screen.dart';
import 'screens/custom_buttons_screen.dart';
import 'screens/animations_screen.dart';

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
        PushScreen.id: (context) => PushScreen(),
        Screen2.id: (context) => Screen2(),
        Screen3.id: (context) => Screen3(),
        DiceScreen.id: (context) => DiceScreen(),
        XylophoneScreen.id: (context) => XylophoneScreen(),
        QuizScreen.id: (context) => QuizScreen(),
        BMIMainScreen.id: (context) => BMIMainScreen(),
        CustomButtonsScreen.id: (context) => CustomButtonsScreen(),
        AnimationsScreen.id: (context) => AnimationsScreen(),
        SnakeBarScreen.id: (context) => SnakeBarScreen(),
        LoadingScreen.id: (context) => LoadingScreen(),
        PriceScreen.id: (context) => PriceScreen(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
        MainRestaurantFinder.id: (context) => MainRestaurantFinder(),
        PermissionsScreen.id: (context) => PermissionsScreen(),
        BatteryLevelScreen.id: (context) => BatteryLevelScreen(),
      },
    );
  }
}