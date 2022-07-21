import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_gym_management_system/screen/homepage/detail/bodycombat/paymentbc_online.dart';
import 'package:flutter_gym_management_system/widget/button_widget.dart';

import 'package:google_fonts/google_fonts.dart';

class DetailBCActivity extends StatelessWidget {
  const DetailBCActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/detailbc.png',
                    height: 190,
                    width: 450,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Rp. 50.000',
                    style: GoogleFonts.robotoCondensed(
                        color: Color.fromARGB(255, 233, 27, 12)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Cardio',
                    style: GoogleFonts.robotoCondensed(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'BodyCombat',
                    style: GoogleFonts.robotoCondensed(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10),
                              Text(
                                'Wed, 22 June',
                                style: GoogleFonts.robotoCondensed(
                                    color: Colors.grey),
                              ),
                              SizedBox(height: 10),
                            ]),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10),
                              Text(
                                '14.00 - 15.00',
                                style: GoogleFonts.robotoCondensed(
                                    color: Colors.grey),
                              ),
                              SizedBox(height: 10),
                            ]),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Anda akan melatih kaki Anda dan mengencangkan lengan, punggung dan bahu Anda. Inti Anda juga akan mendapatkan latihan inti yang fenomenal saat Anda membakar kalori dan mengembangkan koordinasi, kelincahan dan kecetan Anda',
                    style: GoogleFonts.robotoCondensed(color: Colors.black),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Trainer',
                    style: GoogleFonts.robotoCondensed(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/Avatar.png'),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '   Irwan',
                        style: GoogleFonts.robotoCondensed(color: Colors.black),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Benefits',
                    style: GoogleFonts.robotoCondensed(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    ' 1. Membakar kalori dengan lebih signifikan \n 2. Membuat tubuh anda bugar dan kuat \n 3. Menaikkan energi anda',
                    style: GoogleFonts.robotoCondensed(
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Media',
                    style: GoogleFonts.robotoCondensed(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/Zoom.png',
                        height: 25,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '   Zoom Meeting',
                        style: GoogleFonts.robotoCondensed(color: Colors.black),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ButtonWidget(
                    text: 'Next',
                    onClicked: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PaymentBCClass()),
                      );
                    },
                  ),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              )),
        )));
  }
}
