import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  final String label;

  FormWidget({
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
              hintText: 'Enter your $label',
              hintStyle: TextStyle(
                color: Colors.grey[200],
                fontSize: 15.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
