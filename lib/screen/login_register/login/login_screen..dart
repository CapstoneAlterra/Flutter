import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../loading_toats.dart';
import '../../../viewmodel/login_viewmodel.dart';
import '../../../widget/button_widget.dart';
import '../../../widget/form_widget.dart';
import 'forgot_password_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _email = TextEditingController();
  final _pass = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _showPassword = false;
  late SharedPreferences prefs;
  late bool isLogin;

  @override
  // void initState() {
  //   super.initState();
  //   checkLogin();
  // }

  // void checkLogin() async {
  //   prefs = await SharedPreferences.getInstance();
  //   isLogin = prefs.getBool('isLogin') ?? false;

  //   if (isLogin == true) {
  //     Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
  //   }
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  //   _email.dispose();
  //   _pass.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
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
        body: Container(
          child: Column(children: <Widget>[
            Image.asset(
              'assets/images/Logo.png',
              width: 200,
              height: 150,
            ),
            Text('Hi, Nice to see you again!',
                style: GoogleFonts.robotoCondensed(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                )),
            SizedBox(
              height: 20,
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Form(
                    key: _formKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(children: <Widget>[
                      Text(
                        'Email',
                        style: GoogleFonts.robotoCondensed(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        child: TextFormField(
                          textInputAction: TextInputAction.next,
                          controller: _email,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email address';
                            }
                            if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                              return 'Please enter a valid email address';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            // labelText: "Enter your Email",
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 12),
                            labelStyle: const TextStyle(
                              color: Colors.grey,
                            ),
                            fillColor: Colors.black,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Password',
                        style: GoogleFonts.robotoCondensed(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      TextFormField(
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.visiblePassword,
                        controller: _pass,
                        obscureText: !_showPassword,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'This field is required';
                          }
                          // if (value.length < 8) {
                          //   return 'Password must be at least 8 characters in length';
                          // }
                          // Return null if the entered password is valid
                          return null;
                        },
                        decoration: InputDecoration(
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _showPassword = !_showPassword;
                              });
                            },
                            child: Icon(
                              _showPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.grey,
                            ),
                          ),
                          // labelText: "password",
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 12),
                          labelStyle: const TextStyle(
                            color: Colors.grey,
                          ),
                          fillColor: Colors.black,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
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
                      // ButtonWidget(
                      //     text: 'Login',
                      //     onClicked: () {
                      //       Navigator.of(context)
                      //           .push(MaterialPageRoute(builder: (context) {
                      //         return HomePageScreen();
                      //       }));
                      //     }),
                      SizedBox(
                        width: size.width,
                        child: ElevatedButton(
                            onPressed: () async {
                              var viewModel = Provider.of<LoginViewModel>(
                                  context,
                                  listen: false);
                              if (_formKey.currentState!.validate()) {
                                showDialog(
                                    barrierDismissible: false,
                                    context: context,
                                    builder: (_) {
                                      return const LoadingToast(
                                        message: 'Please Wait...',
                                      );
                                    });

                                await viewModel.signIn(
                                    email: _email.value.text.toString(),
                                    pass: _pass.value.text.toString());
                                Navigator.pop(context);

                                if (viewModel.eror == null ||
                                    viewModel.eror == '') {
                                  Fluttertoast.showToast(
                                      backgroundColor: Colors.white,
                                      textColor: Color.fromARGB(255, 237, 5, 5),
                                      msg: 'User Log In',
                                      gravity: ToastGravity.BOTTOM);

                                  Navigator.pushNamedAndRemoveUntil(
                                      context, '/home', (route) => false);
                                } else {
                                  Fluttertoast.showToast(
                                      backgroundColor: Colors.white,
                                      textColor: Color.fromARGB(255, 237, 5, 5),
                                      msg: viewModel.eror!.toString(),
                                      gravity: ToastGravity.CENTER);
                                  setState(() {
                                    String? data;
                                    viewModel.eror = data;
                                  });
                                }
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size.fromHeight(50.0),
                              primary: Color.fromARGB(255, 237, 5, 5),
                              side: BorderSide(
                                width: 1,
                                color: Color.fromARGB(255, 237, 5, 5),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            child: Text(
                              'Login',
                              style: GoogleFonts.robotoCondensed(
                                fontSize: 20,
                              ),
                            )),
                      ),
                    ], crossAxisAlignment: CrossAxisAlignment.start)))
          ]),
        ));
  }
}
