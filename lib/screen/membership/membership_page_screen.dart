import 'package:flutter/material.dart';
import 'package:flutter_gym_management_system/widget/button2_widget.dart';
import 'package:flutter_gym_management_system/widget/button_widget.dart';
import 'package:google_fonts/google_fonts.dart';

import 'membership2_page.dart';

class MembershipScreen extends StatefulWidget {
  @override
  State<MembershipScreen> createState() => _MembershipScreenState();
}

class _MembershipScreenState extends State<MembershipScreen> {
  final isSelected = <bool>[true, false, false];

  late final void Function(int index) onPressed;

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
          'Membership',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Column(children: [
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(
                color: Color.fromARGB(255, 237, 5, 5),
                width: double.infinity,
                height: 130.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/Logo.png',
                      height: 75,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Membership Card',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Text(
                    'Apa itu Membership GymBud?',
                    style: GoogleFonts.robotoCondensed(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Membership GymBud adalah penawaran yang diberikan oleh kami kepada pengguna kami yang memberikan beberapa manfaat yaitu: \n 1. Full acces terhadap fasilitas gym \n 2. Promo kelas dengan harga menarik',
                    style: GoogleFonts.robotoCondensed(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ButtonWidget(
                      text: 'Join Membership       Rp. 100.000',
                      onClicked: () {}),
                  SizedBox(
                    height: 20.0,
                  ),
                  Button2Widget(text: 'Select Duration', onClicked: () {}),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ToggleButtons(
                        color: Colors.black,
                        selectedColor: Color.fromARGB(255, 237, 5, 5),
                        selectedBorderColor: Color.fromARGB(255, 237, 5, 5),
                        fillColor: Color.fromARGB(255, 237, 5, 5),
                        splashColor: Color.fromARGB(255, 237, 5, 5),
                        borderColor: Colors.grey,
                        onPressed: (int index) {
                          setState(() {
                            for (int buttonIndex = 0;
                                buttonIndex < isSelected.length;
                                buttonIndex++) {
                              if (buttonIndex == index) {
                                isSelected[buttonIndex] = true;
                              } else {
                                isSelected[buttonIndex] = false;
                              }
                            }
                          });
                        },
                        // onPressed: (index) {
                        //   setState(() {
                        //     isSelected[index] = !isSelected[index];
                        //   });
                        // },
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text('1 Month \n \n Rp. 100.000',
                                style: GoogleFonts.robotoCondensed(
                                  color: Colors.grey[400],
                                  fontWeight: FontWeight.w400,
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text('4 Month \n \n Rp. 400.000',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontWeight: FontWeight.w400,
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text('8 Month \n \n Rp. 800.000',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontWeight: FontWeight.w400,
                                )),
                          ),
                        ],
                        isSelected: isSelected,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ButtonWidget(
                      text: 'Next',
                      onClicked: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Membership2Screen(),
                          ),
                        );
                      }),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            ),
          ], crossAxisAlignment: CrossAxisAlignment.start),
        ),
      ),
    );
  }
}
