import 'package:flutter/material.dart';
import '../constants.dart';

class CustomButton extends StatelessWidget {

  final Function onTap;
  final String buttonText;

  CustomButton({@required this.onTap, @required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonText.toUpperCase(),
            style: kCustomButtonTextStyle,
          ),
        ),
        margin: EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 0.0),
        padding: EdgeInsets.all(12.0),
        width: double.infinity,
        height: kCustomButtonHeight,
        decoration: BoxDecoration(
          color: kCustomButtonColor,
          borderRadius: BorderRadius.circular(24.0),
        ),
      ),
    );
  }
}