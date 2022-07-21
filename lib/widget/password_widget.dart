import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordWidget extends StatefulWidget {
  @override
  State<PasswordWidget> createState() => _PasswordWidgetState();
}

class _PasswordWidgetState extends State<PasswordWidget> {
  bool _isHidePassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 5.0,
        ),
        Container(
          child: TextFormField(
            obscureText: _isHidePassword,
            autofocus: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              labelStyle: GoogleFonts.robotoCondensed(
                color: Colors.grey[600],
                fontSize: 15.0,
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  _isHidePassword ? Icons.visibility_off : Icons.visibility,
                  color: Colors.grey[300],
                ),
                onPressed: _togglePasswordVisibility,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
