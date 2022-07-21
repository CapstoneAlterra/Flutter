import 'package:flutter/material.dart';
import 'package:flutter_gym_management_system/screen/homepage/homepage_home.dart';
import 'package:flutter_gym_management_system/screen/homepage/homepage_screen.dart';
import 'package:flutter_gym_management_system/screen/login_register/register/register_screen.dart';
import 'package:flutter_gym_management_system/widget/button2_widget.dart';
import 'package:flutter_gym_management_system/widget/button_widget.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../homepage/homepage_activity.dart';
// import 'package:flutter_gym_management_system/widget/textbutton_widget.dart';

class Upload3Bukti extends StatelessWidget {
  const Upload3Bukti({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/success.png',
              height: 175.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Bukti Berhasil di upload',
              style: GoogleFonts.robotoCondensed(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Pembayaranmu akan diproses selama 2x24 jam',
                style: GoogleFonts.robotoCondensed(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                )),
            SizedBox(height: 5),
            Text('Jelajahi kelas lainnya untuk pengalaman yang lebih baik',
                style: GoogleFonts.robotoCondensed(
                  fontSize: 15.0,
                  color: Colors.grey,
                )),
            SizedBox(height: 180.0),
            ButtonWidget(
                text: 'Lihat Kelas',
                onClicked: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return HomepageActivity();
                  }));
                }),
            SizedBox(height: 20.0),
            Button2Widget(
              text: ('Home'),
              onClicked: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return HomePageScreen();
                }));
              },
            ),
          ],
        ),
      )),
    );
  }
}
