import 'package:flutter/material.dart';
import 'package:flutter_gym_management_system/screen/login_register/login/forgot_password_screen.dart';

import '../../../widget/button_widget.dart';
import '../../../widget/form_widget.dart';
import '../../homepage/HomePage_Screen.dart';
import '../../homepage/homepage_home.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isHidePassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }

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
                  FormWidget(
                    // obscureText: _isHidePassword,
                    label: 'Password',
                    // suffixIcon: IconButton(
                    //   icon: Icon(
                    //     _isHidePassword
                    //         ? Icons.visibility_off
                    //         : Icons.visibility,
                    //     color: Colors.black,
                    //   ),
                    //   onPressed: _togglePasswordVisibility,
                    // ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ButtonWidget(
                    text: 'Masuk',
                    onClicked: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomepageHome(),
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
