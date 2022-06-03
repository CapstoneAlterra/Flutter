import 'package:flutter/material.dart';

import '../widget/button_widget.dart';
import '../widget/form_widget.dart';

class LoginScreen extends StatelessWidget {
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
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.3,
                            width: 370.0,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image:
                                    AssetImage('assets/images/login_image.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 35.0,
                            ),
                            child: Column(children: [
                              FormWidget(
                                label: 'Email',
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              FormWidget(
                                label: 'Password',
                              ),
                              const SizedBox(
                                height: 8.0,
                              ),
                              const Text(
                                'Forgot Password ?',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              ButtonWidget(
                                text: 'Masuk',
                                onClicked: () {},
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
