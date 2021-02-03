import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/values/strings.dart';
import 'package:flutter_app/components/custom_button.dart';

class Screen9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        accentColor: Colors.white,
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /**
       * resizeToAvoidBottomInset si usa per risolvere il problema di "BOTTOM OVERFLOWED" che si verifica quando appare la keyboard.
       * resizeToAvoidBottomInset: false se la view non è contenuta all'interno del widget ListView (la view non scrolla).
       * resizeToAvoidBottomInset: true se la view è contenuta all'interno del widget ListView (la view scrolla).
       */
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(24.0, 0.0, 0.0, 0.0),
                        child: Image(
                          image: AssetImage('images/logo_w3b.png'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 48.0,
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0.0, 0.0, 24.0, 0.0),
                        child: Image(
                          image: AssetImage('images/logo_w3b_direct.png'),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.fromLTRB(16.0, 24.0, 0.0, 0.0),
                  child: Text(
                    welcome_message.toUpperCase(),
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Source Sans Pro',
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.fromLTRB(16.0, 0.0, 0.0, 0.0),
                  child: Text(
                    w3b,
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Source Sans Pro',
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.fromLTRB(16.0, 32.0, 0.0, 0.0),
                  child: Text(
                    access_instructions,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Source Sans Pro',
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.0,
                ),
                Container(
                  height: 40.0,
                  margin: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 10,
                        child: Container(
                          height: 40.0,
                          padding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
                          alignment: AlignmentDirectional.centerStart,
                          color: Colors.white,
                          child: Text(
                            w3b,
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 40.0,
                          color: Colors.white,
                          child: Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Container(
                  height: 40.0,
                  margin: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
                  child: TextField(
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: enter_username,
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(0.0),
                        ),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    onChanged: (value) {
                      print(value);
                    },
                    textAlignVertical: TextAlignVertical.bottom,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Container(
                  height: 40.0,
                  margin: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 10,
                        child: TextField(
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: enter_password,
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(0.0),
                              ),
                              borderSide: BorderSide.none,
                            ),
                          ),
                          onChanged: (value) {
                            print(value);
                          },
                          textAlignVertical: TextAlignVertical.bottom,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 40.0,
                          color: Colors.white,
                          child: Icon(
                            Icons.remove_red_eye,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
                      child: Switch(
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                            print(isSwitched);
                          });
                        },
                        inactiveTrackColor: Colors.grey,
                        activeTrackColor: Colors.orangeAccent,
                        activeColor: Colors.orange,
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        stores_password,
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Source Sans Pro',
                        ),
                      ),
                    ),
                  ],
                ),
                CustomButton(
                  text: button_access.toUpperCase(),
                  onTap: () {
                  },
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.fromLTRB(16.0, 0.0, 0.0, 0.0),
                  child: Text(
                    missing_password,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Source Sans Pro',
                    ),
                  ),
                ),
                CustomButton(
                  text: button_sign_in.toUpperCase(),
                  empty: true,
                  onTap: () {
                  },
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.fromLTRB(16.0, 0.0, 0.0, 0.0),
                  child: Text(
                    forgot_password,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Source Sans Pro',
                    ),
                  ),
                ),
                CustomButton(
                  text: button_password_recovery.toUpperCase(),
                  empty: true,
                  onTap: () {
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}