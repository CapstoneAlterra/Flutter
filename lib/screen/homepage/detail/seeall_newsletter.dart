import 'package:flutter/material.dart';
import 'package:flutter_gym_management_system/screen/homepage/detail/detail_newsletter.dart';
import 'package:flutter_gym_management_system/screen/homepage/notification/notification_screen.dart';
import 'package:flutter_gym_management_system/widget/customdropdownbutton2.dart';
import 'package:google_fonts/google_fonts.dart';

// import '../../widget/customdropdownbutton2.dart';
// import 'notification/notification_screen.dart';

class SeeAllNewsletter extends StatefulWidget {
  const SeeAllNewsletter({Key? key}) : super(key: key);

  @override
  State<SeeAllNewsletter> createState() => _SeeAllNewsletter();
}

class _SeeAllNewsletter extends State<SeeAllNewsletter> {
  String? selectedValue;
  String? selectedCategory;

  var kelas = [
    'Offline',
    'Online',
  ];

  var category = [
    'Category 1',
    'Category 2',
    'Category 3',
    'Category 4',
    'Category 5',
  ];

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
            icon: const Icon(Icons.notifications_outlined, color: Colors.white),
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
          margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Newsletter',
                style: GoogleFonts.robotoCondensed(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 180,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (contex) => DetailNewsLetter()));
                      },
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Image.asset(
                                    'assets/images/banner_newsletter.jpeg',
                                    fit: BoxFit.fill),
                              ],
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 7.0),
                              child: Text(
                                'Tips jaga makan saat melakukan diet',
                                style: GoogleFonts.robotoCondensed(
                                  color: Colors.black,
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 7.0, vertical: 5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '21 June 2022',
                                    style: GoogleFonts.robotoCondensed(
                                      color: Colors.grey,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                          ]),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                  ),
                  Container(
                    width: 180,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (contex) => DetailNewsLetter()));
                      },
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Image.asset('assets/images/banner_kelas.jpg',
                                    fit: BoxFit.fill),
                              ],
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 7.0),
                              child: Text(
                                'Tips jaga makan saat melakukan diet',
                                style: GoogleFonts.robotoCondensed(
                                  color: Colors.black,
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 7.0, vertical: 5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '21 June 2022',
                                    style: GoogleFonts.robotoCondensed(
                                      color: Colors.grey,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                          ]),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
