import 'package:flutter/material.dart';

class Button3Widget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const Button3Widget({
    required this.text,
    required this.onClicked,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(40.0),
        primary: Colors.white,
        elevation: 5,
        side: BorderSide(
          width: 1,
          color: Color.fromARGB(255, 237, 5, 5),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          text,
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.0,
          ),
        ),
      ),
      onPressed: onClicked,
    );
  }
}
