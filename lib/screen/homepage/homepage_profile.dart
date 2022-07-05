import 'package:flutter/material.dart';
import 'package:flutter_gym_management_system/screen/homepage/profile/edit_profile.dart';

import '../../widget/button3_widget.dart';
import '../../widget/button_widget.dart';
import '../membership/membership_page_screen.dart';

class HomepageProfile extends StatefulWidget {
  const HomepageProfile({Key? key}) : super(key: key);

  @override
  State<HomepageProfile> createState() => _HomepageProfileState();
}

class _HomepageProfileState extends State<HomepageProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SingleChildScrollView(
            child: Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: const [
                      Text(
                        'Profile',
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
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    'Hallo, {Username}',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  ButtonWidget(
                    text: 'Join Membership',
                    onClicked: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MembershipScreen(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 237, 5, 5),
                      border: Border.all(
                        color: const Color.fromARGB(255, 237, 5, 5),
                        width: 5,
                      ),
                    ),
                    child: Column(
                      children: const [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Membership GymBud',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Exp 27/07/22',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'ID 97892321',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    children: const [
                      Text(
                        'Account',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Button3Widget(
                    text: ('Edit Profile'),
                    onClicked: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return EditProfile();
                      }));
                    },
                  ),
                  SizedBox(width: 10.0),
                  Button3Widget(
                    text: ('Order History'),
                    onClicked: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return HomepageProfile();
                      }));
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
