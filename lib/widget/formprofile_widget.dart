import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormProfile extends StatelessWidget {
  final String hintText;

  FormProfile({
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 5.0,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 15.0,
              ),
              hintText: '$hintText',
              hintStyle: GoogleFonts.robotoCondensed(
                color: Colors.black,
                fontSize: 15.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
