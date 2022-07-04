import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widget/button_widget.dart';
import '../../../widget/form_widget.dart';
import 'forgot_password2.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Forgot Password',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Please enter email that you use to sign in to GymBud',
                    style: GoogleFonts.robotoCondensed(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  FormWidget(
                    label: 'Email',
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ButtonWidget(
                      text: 'Continue',
                      onClicked: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return ForgotPassword2();
                        }));
                      })
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              )
            ],
          ),
        ))));
  }
}
