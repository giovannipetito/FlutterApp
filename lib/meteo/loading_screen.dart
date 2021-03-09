import 'package:flutter/material.dart';
import 'package:flutter_app/meteo/location_screen.dart';
import 'package:flutter_app/meteo/services/weather_model.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {

  static const String id = 'loading_screen';

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  @override
  Widget build(BuildContext context) {

    /*
    // TODO: NOTA: Spostare questa logica del TRY CATCH in un'altra classe.
    double myPadding;
    try {
      myPadding = double.parse('15');
    } catch (ex) {
      print(ex);
    }

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(myPadding ?? 30.0),
        color: Colors.red,
      ),
    );
    */

    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );

  }

  void getLocationData() async {

    var weatherData = await WeatherModel().getLocationWeather();

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(locationWeather: weatherData,);
    }));
  }
}
