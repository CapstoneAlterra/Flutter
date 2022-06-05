import 'package:flutter/material.dart';
import 'package:flutter_gym_management_system/screen/login_register/login/login_screen..dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../../widget/button_widget.dart';
import '../../../widget/form_widget.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Daftar',
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
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
            ),
            Text(
              'Verification Code',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Column(children: [
                  Text(
                      'We have sent 4 digit verification code to the number $PhoneNumber'),
                  const SizedBox(
                    height: 25.0,
                  ),
                  FormWidget(
                    label: 'Enter Code',
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text('If you did not receive the code'),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                      child: Text('Resend Code')),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ButtonWidget(
                      text: 'Verify',
                      onClicked: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return LoginScreen();
                        }));
                      })
                ]))
          ])
        ])))));
  }
}
