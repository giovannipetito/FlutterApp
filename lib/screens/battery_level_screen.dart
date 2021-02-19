import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BatteryLevelScreen extends StatefulWidget {

  static const String id = 'battery_level_screen';

  @override
  _BatteryLevelScreenState createState() => _BatteryLevelScreenState();
}

class _BatteryLevelScreenState extends State<BatteryLevelScreen> {

  static const platform = const MethodChannel('it.giovanni.flutter_app/battery_level');

  String _batteryLevel = 'Unknown battery level.';

  @override
  void initState() {
    _getBatteryLevel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('BATTERY LEVEL'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_batteryLevel),
          ],
        ),
      ),
    );
  }

  Future<void> _getBatteryLevel() async {
    String batteryLevel;
    try {
      var results = await platform.invokeMethod('getBatteryLevel');
      int result = results[0];
      batteryLevel = 'Battery level: $result%';
    } on PlatformException catch (e) {
      batteryLevel = "Failed to get battery level: '${e.message}'.";
    }

    setState(() {
      _batteryLevel = batteryLevel;
    });
  }
}
