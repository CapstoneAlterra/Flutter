import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonProfile extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonProfile({
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
      ),
      child: Text(
        text,
        style: GoogleFonts.robotoCondensed(
          fontSize: 20.0,
          fontWeight: FontWeight.w400,
          color: Color.fromARGB(255, 237, 5, 5),
        ),
      ),
      onPressed: onClicked,
    );
  }
}
