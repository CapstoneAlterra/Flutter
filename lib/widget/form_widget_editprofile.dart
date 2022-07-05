import 'package:flutter/material.dart';

class FormEditProfile extends StatelessWidget {
  final String label;

  FormEditProfile({
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        SizedBox(
          width: 5.0,
        ),
      ],
    );
  }
}
