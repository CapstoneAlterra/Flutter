import 'package:flutter/material.dart';

class Button2Widget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const Button2Widget({
    required this.text,
    required this.onClicked,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(50.0),
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
      child: Text(
        text,
        style: TextStyle(
          color: Color.fromARGB(255, 237, 5, 5),
          fontSize: 20.0,
        ),
      ),
      onPressed: onClicked,
    );
  }
}
