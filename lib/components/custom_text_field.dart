import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  final String hint;
  final Icon icon;

  CustomTextField({@required this.hint, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 0.0),
      child: TextField(
        style: TextStyle(
          color: Colors.black,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          icon: icon,
          hintText: hint,
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(48.0),
            ),
            borderSide: BorderSide.none,
          ),
        ),
        onChanged: (value) {
          print(value);
        },
      ),
    );
  }
}
