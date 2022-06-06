import 'package:flutter/material.dart';

import '../../../widget/button_widget.dart';
import '../../../widget/form_widget.dart';
import 'forgot_password2.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Forgot Password',
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
            Text(
              'No worries just enter you email',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 30.0,
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
                  ButtonWidget(
                      text: 'Continue',
                      onClicked: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return ForgotPassword2();
                        }));
                      })
                ]))
          ])
        ])))));
  }
}
