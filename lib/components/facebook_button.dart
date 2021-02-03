import 'package:flutter/material.dart';

class FacebookButton extends StatelessWidget {

  final String text;
  final bool darkMode;
  final VoidCallback onPressed;

  FacebookButton({
    this.text,
    this.darkMode = false,
    this.onPressed,
    Key key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide(color: Colors.blue, width: 1, style: BorderStyle.solid),
            top: BorderSide(color: Colors.blue, width: 1, style: BorderStyle.solid),
            right: BorderSide(color: Colors.blue, width: 1, style: BorderStyle.solid),
            bottom: BorderSide(color: Colors.blue, width: 1, style: BorderStyle.solid),
          ),
          color: darkMode ? Colors.blue : Colors.white,
          borderRadius: BorderRadius.circular(3.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(1.0, 1.0, 1.0, 1.0), // adds to 10 to make 12
              child: Container(
                height: 38.0, // 40dp - 2*1dp border
                width: 38.0, // matches above
                decoration: BoxDecoration(
                  color: darkMode ? Colors.white : null,
                  borderRadius: BorderRadius.circular(3.0),
                ),
                child: Center(
                  child: Image(
                    image: AssetImage(
                      "images/diamond.png",
                    ),
                    height: 18.0,
                    width: 18.0,
                  ),
                ),
              ),
            ),
            SizedBox(width: 6.0),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 8.0, 8.0, 8.0),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 18.0,
                  fontFamily: "SourceSansPro",
                  fontWeight: FontWeight.bold,
                  color: darkMode ? Colors.white : Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: onPressed,
    );
  }
}
