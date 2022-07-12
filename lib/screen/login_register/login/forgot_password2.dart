import 'package:flutter/material.dart';
import 'package:flutter_gym_management_system/screen/login_register/login/login_screen..dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widget/button_widget.dart';
import '../../../widget/form_widget.dart';
import '../../../widget/password_widget.dart';

class ForgotPassword2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Forgot Password',
            style: GoogleFonts.robotoCondensed(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(children: [
                      Column(children: [
                        const SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          'New Password',
                          style: GoogleFonts.robotoCondensed(
                            fontSize: 17.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        Text(
                          'Create New Password',
                          style: GoogleFonts.robotoCondensed(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[600],
                          ),
                        ),
                        PasswordWidget(),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Confirm New Password',
                          style: GoogleFonts.robotoCondensed(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[600],
                          ),
                        ),
                        PasswordWidget(),
                        SizedBox(
                          height: 20.0,
                        ),
                        ButtonWidget(
                            text: 'Change',
                            onClicked: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return LoginScreen();
                              }));
                            })
                      ], crossAxisAlignment: CrossAxisAlignment.start),
                    ])))));
  }
}
