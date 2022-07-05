import 'package:flutter/material.dart';
import 'package:flutter_gym_management_system/widget/form_widget.dart';
import 'package:flutter_gym_management_system/widget/form_widget_editprofile.dart';

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
      body: Column(
        children: [
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_circle_left_outlined,
                        size: 35,
                      ),
                      SizedBox(width: 15.0),
                      Text(
                        'Edit Profile',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: Image.asset(
                      'assets/images/banner_kelas.jpg',
                      width: 125,
                      height: 125,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'Change',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  FormEditProfile(label: 'Email'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
