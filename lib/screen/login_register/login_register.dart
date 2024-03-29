import 'package:flutter/material.dart';
import 'package:flutter_gym_management_system/screen/login_register/register/register_screen.dart';
import 'package:flutter_gym_management_system/widget/button2_widget.dart';
import 'package:flutter_gym_management_system/widget/button_widget.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_gym_management_system/widget/textbutton_widget.dart';

import 'login/login_screen..dart';

class LoginRegister extends StatelessWidget {
  const LoginRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/Dumbbells.png',
              height: 175.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Selamat datang di GymBud',
              style: GoogleFonts.robotoCondensed(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text('Wujudkan badan impian kamu bersama kami',
                style: GoogleFonts.robotoCondensed(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400,
                )),
            SizedBox(height: 180.0),
            ButtonWidget(
                text: 'Mulai',
                onClicked: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return RegisterScreen();
                  }));
                }),
            SizedBox(height: 20.0),
            Button2Widget(
              text: ('Sudah Punya Akun?'),
              onClicked: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              },
            ),
          ],
        ),
      )),
    );
  }
}
