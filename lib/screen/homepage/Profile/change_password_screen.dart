import 'package:flutter/material.dart';
import 'package:flutter_gym_management_system/screen/login_register/login/login_screen..dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../widget/button_widget.dart';
import '../../../../widget/form_widget.dart';
import '../../../../widget/password_widget.dart';
import '../../login_register/login/forgot_password_screen.dart';

class ChangePassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Change Password',
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
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(children: [
                      Column(children: [
                        const SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          'Current Password',
                          style: GoogleFonts.robotoCondensed(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[600],
                          ),
                        ),
                        PasswordWidget(),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              child: Text(
                                'Forgot Password?',
                                style: GoogleFonts.robotoCondensed(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 233, 27, 12),
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return ForgotPassword();
                                }));
                              },
                            ),
                          ],
                        ),
                        // SizedBox(
                        //   height: 5,
                        // ),
                        Text(
                          'New Password',
                          style: GoogleFonts.robotoCondensed(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[600],
                          ),
                        ),
                        PasswordWidget(),
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
                            text: 'Save Change',
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
