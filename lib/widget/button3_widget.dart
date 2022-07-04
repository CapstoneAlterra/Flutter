import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        minimumSize: Size.fromHeight(50.0),
        primary: Colors.white,
        side: BorderSide(
          color: Colors.grey,
        ),
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            text,
            style: GoogleFonts.robotoCondensed(
              fontSize: 15.0,
              color: Colors.black,
            ),
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
      onPressed: onClicked,
    );
  }
}
