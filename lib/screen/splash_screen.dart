import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_gym_management_system/screen/login_register/login_register.dart';
import 'package:load/load.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

@override
class _SplashScreenState extends State<SplashScreen> {
  Future splashTiming() async {
    Timer(Duration(seconds: 3), nextScreen);
  }

  void nextScreen() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => LoginRegister(),
      ),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    splashTiming();
    double Kwidth = MediaQuery.of(context).size.width;
    double Kheight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/Logo.png',
            // fit: BoxFit.cover,
            width: Kwidth * 0.6,
            height: Kheight * 0.6,
          ),
          SizedBox(
            height: 40,
          ),
          CircularProgressIndicator(
            backgroundColor: Colors.red[600],
            strokeWidth: 2.0,
          ),
        ],
      ),
    ));
  }
}
