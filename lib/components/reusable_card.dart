import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  final Color mColor;
  final Widget cardChild;
  final Function onPress;

  ReusableCard({@required this.mColor, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: mColor,
          // color: Color(0xFF1D1E33),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}