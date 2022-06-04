import 'package:flutter/material.dart';
import 'package:flutter_gym_management_system/screen/login_register/login/login_screen..dart';
import 'package:flutter_gym_management_system/screen/login_register/register/register_screen.dart';
import 'package:flutter_gym_management_system/screen/login_register/login_register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GYM MEMBERSHIP SYSTEM',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: LoginRegister(),
    );
  }
}
