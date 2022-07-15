import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
// import 'package:flutter_gym_management_system/screen/login_register/register/register2_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_register/screen/login/login_screen..dart';
import 'package:login_register/screen/register/register3_screen.dart';
import 'package:provider/provider.dart';

import '../../../widget/button_widget.dart';
import '../../../widget/form_widget.dart';
import '../../../widget/password_widget.dart';
import '../../components.dart';
import '../../constant.dart';
import '../../model/register_model.dart';
import '../../viewmodel/register_viewmodel.dart';
import 'register2_screen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _pass = TextEditingController();
  final _confirmpass = TextEditingController();
  bool _showPassword = false;

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
            'Daftar',
            style: GoogleFonts.robotoCondensed(
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
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                      ),
                      child: Column(
                        children: [
                          Image.asset('assets/images/1.png'),
                          SizedBox(
                            height: 20,
                          ),
                          Form(
                            key: _formKey,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Email',
                                  style: GoogleFonts.robotoCondensed(
                                    fontSize: 15.0,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                TextFormField(
                                  controller: _email,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your email address';
                                    }
                                    if (!RegExp(r'\S+@\S+\.\S+')
                                        .hasMatch(value)) {
                                      return 'Please enter a valid email address';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 12),
                                    hintText: 'Enter your Email',
                                    hintStyle: GoogleFonts.robotoCondensed(),
                                    labelStyle: const TextStyle(
                                      //color: kDarkColor,
                                      fontSize: 16.0,
                                    ),
                                    // fillColor: kSecondaryColor,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  'Password',
                                  style: GoogleFonts.robotoCondensed(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                TextFormField(
                                  obscureText: _showPassword,
                                  controller: _pass,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'This field is required';
                                    }
                                    if (value.length < 8) {
                                      return 'Password must be at least 8 characters in length';
                                    }
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
                                    hintText: 'At least 8 characters',
                                    hintStyle: GoogleFonts.robotoCondensed(),
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 12),
                                    labelStyle: const TextStyle(
                                      //color: kDarkColor,
                                      fontSize: 16.0,
                                    ),
                                    fillColor: Colors.black,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  'Confirm Password',
                                  style: GoogleFonts.robotoCondensed(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                TextFormField(
                                  obscureText: _showPassword,
                                  controller: _confirmpass,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'This field is required';
                                    }
                                    // if (value != _pass) {
                                    //   return 'Your password is not match';
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
                                    // hintText: 'Create Password',
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 12),
                                    labelStyle: const TextStyle(
                                      //color: kDarkColor,
                                      fontSize: 16.0,
                                    ),
                                    // fillColor: kSecondaryColor,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 15.0,
                                ),
                                SizedBox(
                                  // width: size.width,
                                  child: ElevatedButton(
                                      onPressed: () async {
                                        var viewModel =
                                            Provider.of<RegisterViewModel>(
                                                context,
                                                listen: false);
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return const LoadingToast(
                                                  message: 'Please Wait...');
                                            });

                                        var data = RegisterModel(
                                          email: _email.value.text.toString(),
                                          password: _pass.value.text.toString(),
                                        );

                                        await viewModel.register(data);
                                        Navigator.pop(context);
                                        Fluttertoast.showToast(
                                            msg: viewModel.message,
                                            backgroundColor: Colors.white,
                                            textColor:
                                                Color.fromARGB(255, 233, 5, 5));

                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (_) => Register()));
                                      },
                                      style: ElevatedButton.styleFrom(
                                        minimumSize: Size.fromHeight(50.0),
                                        primary: Color.fromARGB(255, 237, 5, 5),
                                        side: BorderSide(
                                          width: 1,
                                          color: Color.fromARGB(255, 237, 5, 5),
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                      ),
                                      child: Text(
                                        'Next',
                                        style: GoogleFonts.robotoCondensed(
                                          fontSize: 20,
                                        ),
                                      )),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                              ],
                            ),
                          )
                        ],
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                    )
                  ],
                )
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
          ),
        )));
  }
}
