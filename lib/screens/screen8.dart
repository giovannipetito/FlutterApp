import 'package:flutter/material.dart';
import 'package:flutter_app/components/custom_text_field.dart';
import 'package:flutter_app/components/facebook_button.dart';

class Screen8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
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
                CustomTextField(hint: 'Username', icon: Icon(Icons.account_circle, color: Colors.lightBlueAccent,),),
                SizedBox(
                  height: 12.0,
                ),
                CustomTextField(hint: 'Password', icon: Icon(Icons.remove_red_eye_rounded, color: Colors.lightBlueAccent,),),
                SizedBox(
                  height: 12.0,
                ),
                RaisedButton(
                  color: Colors.lightBlue,
                  child: Icon(Icons.add),
                  onPressed: () {
                    print("RaisedButton clicked");
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  color: Colors.lightBlue[500],
                  textColor: Colors.red, // Non ha effetto se nel TextStyle è definito il colore.
                  highlightColor: Colors.indigo,
                  splashColor: Colors.yellow,
                  colorBrightness: Brightness.light, // Ha effetto su textColor e splashColor.
                  elevation: 6,
                  highlightElevation: 10, // l'ombra si allarga al tap sul button.
                  disabledColor: Colors.grey,
                  disabledTextColor: Colors.black,
                  disabledElevation: 6,
                  // textTheme: ButtonTextTheme.normal, // Ha effetto su textColor e splashColor.
                  // textTheme: ButtonTextTheme.accent, // Ha effetto su textColor e splashColor.
                  // textTheme: ButtonTextTheme.primary, // Ha effetto su textColor e splashColor.
                  child: Text(
                    "RaisedButton 1",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  shape: StadiumBorder(
                    side: BorderSide(color: Colors.indigo, width: 2),
                  ),
                  onPressed: () {
                    print("RaisedButton clicked");
                  },
                  // onPressed: null, // Per disabilitare il button (e rendere visibili disabledColor e disabledTextColor).
                  onHighlightChanged: (isHigh) {
                    print("onHighlightChanged.isHigh = $isHigh");
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  color: Colors.lightBlue[500],
                  textColor: Colors.red, // Non ha effetto se nel TextStyle è definito il colore.
                  highlightColor: Colors.indigo,
                  splashColor: Colors.yellow,
                  colorBrightness: Brightness.light, // Ha effetto su textColor e splashColor.
                  elevation: 6,
                  highlightElevation: 10, // l'ombra si allarga al tap sul button.
                  disabledColor: Colors.grey,
                  disabledTextColor: Colors.black,
                  disabledElevation: 6,
                  // textTheme: ButtonTextTheme.normal, // Ha effetto su textColor e splashColor.
                  // textTheme: ButtonTextTheme.accent, // Ha effetto su textColor e splashColor.
                  // textTheme: ButtonTextTheme.primary, // Ha effetto su textColor e splashColor.
                  child: Text(
                    "RaisedButton 2",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.indigo, width: 2),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  onPressed: () {
                    print("RaisedButton clicked");
                  },
                  // onPressed: null, // Per disabilitare il button (e rendere visibili disabledColor e disabledTextColor).
                  onHighlightChanged: (isHigh) {
                    print("onHighlightChanged.isHigh = $isHigh");
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                FacebookButton(text: 'Continue with Facebook', onPressed: () {}),
                SizedBox(
                  height: 12.0,
                ),
                FacebookButton(text: 'Continue with Facebook', darkMode: true, onPressed: () {}),
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