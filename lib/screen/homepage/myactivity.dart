import 'package:flutter/material.dart';

import '../../widget/button_widget.dart';
import '../../widget/customdropdownbutton2.dart';
import '../membership/membership_page_screen.dart';
import 'detail/detailactivity_screen.dart';
import 'homepage_catalog.dart';
import 'notification/notification_screen.dart';

import 'package:google_fonts/google_fonts.dart';

class MyActivity extends StatefulWidget {
  const MyActivity({Key? key}) : super(key: key);

  @override
  State<MyActivity> createState() => _MyActivityState();
}

class _MyActivityState extends State<MyActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Image.asset(
            'assets/images/Logo.png',
            height: 50.0,
          ),
          actions: <Widget>[
            IconButton(
              icon:
                  const Icon(Icons.notifications_outlined, color: Colors.white),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationScreen()));
              },
            ),
          ],
          backgroundColor: const Color.fromARGB(255, 237, 5, 5),
        ),
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 20),
                Text(
                  'My Activity',
                  style: GoogleFonts.robotoCondensed(
                    color: Colors.black,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                    child: Column(children: [
                  Image.asset('assets/images/Nofounds.png', height: 230),
                  Text(
                    'Kamu belum memiliki ',
                    style: GoogleFonts.robotoCondensed(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    'jadwal kelas',
                    style: GoogleFonts.robotoCondensed(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Yuk, jelajahi kelas untuk mendapatkan jadwal',
                    style: GoogleFonts.robotoCondensed(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  ButtonWidget(
                      text: 'Jelajahi Kelas',
                      onClicked: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return HomepageCatalog();
                        }));
                      })
                ]))
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
          ),
        ));
  }
}
