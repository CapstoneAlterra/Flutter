import 'package:flutter/material.dart';
import 'package:flutter_gym_management_system/screen/login_register/login/forgot_password_screen.dart';
import 'package:flutter_gym_management_system/widget/password_widget.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widget/button_widget.dart';
import '../../../widget/form_widget.dart';
import '../../homepage/HomePage_Screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginData {
  String email = '';
  String password = '';
}

class UserData extends _LoginData {
  String token = '';
  String username = '';
  late int id;

  void addData(Map<String, dynamic> responseMap) {
    this.id = responseMap["id"];
    this.username = responseMap["username"];
    this.token = responseMap["token"];
  }
}

class _LoginScreenState extends State<LoginScreen> {
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
            'Masuk',
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
                    child: Column(children: [
          Column(children: [
            const SizedBox(
              height: 50.0,
            ),
            Image.asset(
              'assets/images/logo.png',
              width: 200,
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              'Hi, Nice to see you again!',
              style: GoogleFonts.robotoCondensed(
                fontSize: 20.0,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Column(children: [
                  FormWidget(
                    label: 'Email',
                  ),
                  SizedBox(
                    height: 20.0,
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
                  SizedBox(
                    height: 15.0,
                  ),
                  ButtonWidget(
                    text: 'Login',
                    onClicked: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePageScreen(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                ], crossAxisAlignment: CrossAxisAlignment.start))
          ]),
        ])))));
  }
}
