import 'package:flutter/material.dart';
import 'package:flutter_gym_management_system/screen/homepage/Profile/change_password_screen.dart';
import 'package:flutter_gym_management_system/widget/form_widget.dart';
import 'package:flutter_gym_management_system/widget/formprofile_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Edit Profile',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: Column(children: [
          SingleChildScrollView(
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10.0,
                        ),
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100.0),
                            child: Image.asset(
                              'assets/images/banner_kelas.jpg',
                              width: 125,
                              height: 125,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Change',
                          style: GoogleFonts.robotoCondensed(
                              color: Color.fromARGB(255, 233, 5, 5)),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Email',
                                style: GoogleFonts.robotoCondensed(
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Expanded(
                                child: FormProfile(hintText: 'example@9999')),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Password',
                                style: GoogleFonts.robotoCondensed(
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Expanded(child: FormProfile(hintText: '******')),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              child: Text(
                                'Change Password',
                                style: GoogleFonts.robotoCondensed(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 233, 27, 12),
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return ChangePassword();
                                }));
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Full Name',
                                style: GoogleFonts.robotoCondensed(
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Expanded(child: FormProfile(hintText: 'Doni')),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Phone',
                                style: GoogleFonts.robotoCondensed(
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Expanded(
                                child: FormProfile(hintText: '08654321234')),
                          ],
                        ),
                      ])))
        ]));
  }
}
