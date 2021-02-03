import 'package:flutter/material.dart';
import '../values/styles.dart';
import '../values/dimens.dart';
import '../values/colors.dart';

class CustomButton extends StatelessWidget {

  final String text;
  final bool empty;
  final Function onTap;

  CustomButton({
    @required this.text,
    this.empty = false,
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
                color: empty ? Colors.grey : Colors.orange,
                width: 2,
                style: BorderStyle.solid),
            top: BorderSide(
                color: empty ? Colors.grey : Colors.orange,
                width: 2,
                style: BorderStyle.solid),
            right: BorderSide(
                color: empty ? Colors.grey : Colors.orange,
                width: 2,
                style: BorderStyle.solid),
            bottom: BorderSide(
                color: empty ? Colors.grey : Colors.orange,
                width: 2,
                style: BorderStyle.solid),
          ),
          color: empty ? kCustomButtonEmptyColor : kCustomButtonColor,
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Center(
          child: Text(
            text.toUpperCase(),
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
