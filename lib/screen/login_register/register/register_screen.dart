import 'package:flutter/material.dart';
import 'package:flutter_gym_management_system/screen/login_register/register/register2_screen.dart';

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
          title: const Text(
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
                child: Column(
              children: [
                Column(children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    child: Column(children: [
                      FormWidget(
                        label: 'Email',
                      ),
                      const SizedBox(
                        height: 8.0,
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
                      const SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        'Confirm Password',
                        style: TextStyle(
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
                    ]),
                  ),
                ]),
              ],
            )),
          ),
        ));
  }
}
