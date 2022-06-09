import 'package:flutter/material.dart';
import 'package:flutter_gym_management_system/screen/login_register/login/forgot_password_screen.dart';
import 'package:flutter_gym_management_system/widget/password_widget.dart';

import '../../../widget/button_widget.dart';
import '../../../widget/form_widget.dart';
import '../../homepage/HomePage_Screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
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
              style: TextStyle(
                fontSize: 15.0,
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
                    style: TextStyle(
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
                    text: 'Masuk',
                    onClicked: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePageHome(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextButton(
                    child: Text(
                      'Forgot Password?',
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return ForgotPassword();
                      }));
                    },
                  )
                ]))
          ])
        ])))));
  }
}
