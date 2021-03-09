import 'package:flutter/material.dart';
import '../values/styles.dart';
import '../values/dimens.dart';
import '../values/colors.dart';

class CustomButton extends StatelessWidget {

  final String text;
  final bool darkMode;
  final Function onTap;

  CustomButton({
    @required this.text,
    this.darkMode = false,
    @required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide(
                color: darkMode ? Colors.grey : Colors.orange,
                width: 2,
                style: BorderStyle.solid),
            top: BorderSide(
                color: darkMode ? Colors.grey : Colors.orange,
                width: 2,
                style: BorderStyle.solid),
            right: BorderSide(
                color: darkMode ? Colors.grey : Colors.orange,
                width: 2,
                style: BorderStyle.solid),
            bottom: BorderSide(
                color: darkMode ? Colors.grey : Colors.orange,
                width: 2,
                style: BorderStyle.solid),
          ),
          color: darkMode ? kCustomButtonEmptyColor : kCustomButtonColor,
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Center(
          child: Text(
            text.toUpperCase(),
            style: darkMode ? kCustomButtonDarkModeTextStyle : kCustomButtonTextStyle,
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
