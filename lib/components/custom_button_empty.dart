import 'package:flutter/material.dart';
import '../values/styles.dart';
import '../values/dimens.dart';
import '../values/colors.dart';

class CustomButtonEmpty extends StatelessWidget {

  final Function onTap;
  final String buttonText;

  CustomButtonEmpty({@required this.onTap, @required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide(color: Colors.grey, width: 2, style: BorderStyle.solid),
            top: BorderSide(color: Colors.grey, width: 2, style: BorderStyle.solid),
            right: BorderSide(color: Colors.grey, width: 2, style: BorderStyle.solid),
            bottom: BorderSide(color: Colors.grey, width: 2, style: BorderStyle.solid),
          ),
          color: kCustomButtonEmptyColor,
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Center(
          child: Text(
            buttonText.toUpperCase(),
            style: kCustomButtonTextStyle,
          ),
        ),
        margin: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
        padding: EdgeInsets.all(12.0),
        width: double.infinity,
        height: kCustomButtonHeight,
      ),
    );
  }
}