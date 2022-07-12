import 'package:flutter/material.dart';
import 'package:flutter_gym_management_system/screen/login_register/register/register2_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widget/button_widget.dart';
import '../../../widget/form_widget.dart';
import '../../../widget/password_widget.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Daftar',
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
                child: Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                      ),
                      child: Column(children: [
                        Image.asset('assets/images/1.png'),
                        SizedBox(
                          height: 20,
                        ),
                        FormWidget(
                          label: 'Email',
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          'Password',
                          style: GoogleFonts.robotoCondensed(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[600],
                          ),
                        ),
                        PasswordWidget(),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          'Confirm Password',
                          style: GoogleFonts.robotoCondensed(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[600],
                          ),
                        ),
                        PasswordWidget(),
                        const SizedBox(
                          height: 15.0,
                        ),
                        ButtonWidget(
                          text: 'Next',
                          onClicked: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return Register();
                            }));
                          },
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                      ], crossAxisAlignment: CrossAxisAlignment.start),
                    ),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
              ],
            )),
          ),
        ));
  }
}
