import 'package:flutter/material.dart';
import 'package:flutter_gym_management_system/screen/login_register/login/login_screen..dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widget/button_widget.dart';
import '../../../widget/form_widget.dart';
import 'register3_screen.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
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
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                        Column(children: [
                          Image.asset('assets/images/2.png'),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            'How should we call you?',
                            style: GoogleFonts.robotoCondensed(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          FormWidget(
                            label: 'Your Full Name',
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          ButtonWidget(
                              text: 'Next',
                              onClicked: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return Register2();
                                }));
                              })
                        ], crossAxisAlignment: CrossAxisAlignment.start)
                      ],
                    )))));
  }
}
