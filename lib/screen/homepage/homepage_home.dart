import 'package:flutter/material.dart';

import 'package:flutter_gym_management_system/screen/homepage/notification/notification_screen.dart';
import 'package:flutter_gym_management_system/screen/membership/membership_page_screen.dart';
import 'package:flutter_gym_management_system/widget/button_widget.dart';
import 'package:google_fonts/google_fonts.dart';

// import 'detail/DetailNewsLetter_screen.dart';
import 'detail/detail_newsletter.dart';

class HomepageHome extends StatefulWidget {
  const HomepageHome({Key? key}) : super(key: key);

  @override
  State<HomepageHome> createState() => _HomepageHomeState();
}

class _HomepageHomeState extends State<HomepageHome> {
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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Halo, {nama}',
              style: GoogleFonts.robotoCondensed(
                color: Colors.black,
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Container(
                color: Color.fromARGB(255, 237, 5, 5),
                width: double.infinity,
                // height: 100.0,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(children: [
                        Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
                        Column(
                          children: [
                            SizedBox(height: 25),
                            Text(
                              'Join Membership Now',
                              style: GoogleFonts.robotoCondensed(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Get your new experience with us',
                              style: GoogleFonts.robotoCondensed(
                                fontSize: 18.0,
                                color: Colors.white70,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 9)),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MembershipScreen()));
                          },
                          icon: Icon(
                            Icons.arrow_circle_right_outlined,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ]),
                    ])),
            const SizedBox(
              height: 20.0,
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
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Membership GymBud',
                      style: GoogleFonts.robotoCondensed(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Exp 27/07/22',
                      style: GoogleFonts.robotoCondensed(
                        color: Colors.white,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'ID 97892321',
                      style: GoogleFonts.robotoCondensed(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Kelas yang tersedia',
                  style: GoogleFonts.robotoCondensed(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'See All',
                  style: GoogleFonts.robotoCondensed(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            SizedBox(
                height: 200,
                child: ListView(scrollDirection: Axis.horizontal, children: <
                    Widget>[
                  Container(
                    width: 170,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailNewsLetter()));
                      },
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Positioned(
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      Image.asset(
                                        'assets/images/banner_kelas.jpg',
                                        fit: BoxFit.fill,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5.0, vertical: 5.0),
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 3.0, vertical: 3.0),
                                            child: Text(
                                              'Offline',
                                              style:
                                                  GoogleFonts.robotoCondensed(
                                                color: Colors.white,
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: Color.fromARGB(
                                                  255, 234, 5, 5),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 7.0, vertical: 5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // Text(
                                  //   'Cardio',
                                  //   style: GoogleFonts.robotoCondensed(
                                  //     color: Colors.black,
                                  //     fontSize: 15.0,
                                  //     fontWeight: FontWeight.w300,
                                  //   ),
                                  // ),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5.0),
                                    child: Text(
                                      'Cardio',
                                      style: GoogleFonts.robotoCondensed(
                                        color: Colors.white,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromARGB(255, 244, 80, 64),
                                    ),
                                  ),
                                  Text(
                                    '22/07/22',
                                    style: GoogleFonts.robotoCondensed(
                                      color: Colors.black,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 7.0),
                              child: Text(
                                'BodyCombat',
                                style: GoogleFonts.robotoCondensed(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 7.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.access_time,
                                    color: Colors.black,
                                    size: 19.0,
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    '00:00',
                                    style: GoogleFonts.robotoCondensed(
                                      color: Colors.grey,
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 7.0),
                              child: Text(
                                'Rp. 999.999.999',
                                style: GoogleFonts.robotoCondensed(
                                  color: Colors.red,
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )
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
                  const SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    width: 170,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Positioned(
                            child: InkWell(
                              onTap: () {},
                              child: Column(children: [
                                Stack(
                                  children: [
                                    Image.asset(
                                      'assets/images/banner_kelas.jpg',
                                      fit: BoxFit.fill,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5.0, vertical: 5.0),
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 3.0, vertical: 3.0),
                                          child: Text(
                                            'Online',
                                            style: GoogleFonts.robotoCondensed(
                                              color: Colors.white,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Color.fromARGB(
                                                255, 0, 202, 229),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ]),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 7.0, vertical: 5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 5.0),
                                  child: Text(
                                    'Cardio',
                                    style: GoogleFonts.robotoCondensed(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromARGB(255, 244, 80, 64),
                                  ),
                                ),
                                Text(
                                  '22/07/22',
                                  style: GoogleFonts.robotoCondensed(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 7.0),
                            child: Text(
                              'BodyCombat',
                              style: GoogleFonts.robotoCondensed(
                                color: Colors.black,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 7.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.access_time,
                                  color: Colors.black,
                                  size: 19.0,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  '00:00',
                                  style: GoogleFonts.robotoCondensed(
                                    color: Colors.grey,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 7.0),
                            child: Text(
                              'Rp. 999.999.999',
                              style: GoogleFonts.robotoCondensed(
                                color: Colors.red,
                                fontSize: 17.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )
                        ]),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    width: 170,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Positioned(
                            child: InkWell(
                              onTap: () {},
                              child: Column(children: [
                                Stack(
                                  children: [
                                    Image.asset(
                                        'assets/images/banner_kelas.jpg',
                                        fit: BoxFit.fill),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5.0, vertical: 5.0),
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 3.0, vertical: 3.0),
                                          child: Text(
                                            'Online',
                                            style: GoogleFonts.robotoCondensed(
                                              color: Colors.white,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Color.fromARGB(
                                                255, 0, 202, 229),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ]),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 7.0, vertical: 5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 5.0),
                                  child: Text(
                                    'Cardio',
                                    style: GoogleFonts.robotoCondensed(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromARGB(255, 244, 80, 64),
                                  ),
                                ),
                                Text(
                                  '22/07/22',
                                  style: GoogleFonts.robotoCondensed(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 7.0),
                            child: Text(
                              'BodyCombat',
                              style: GoogleFonts.robotoCondensed(
                                color: Colors.black,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 7.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.access_time,
                                  color: Colors.black,
                                  size: 19.0,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  '00:00',
                                  style: GoogleFonts.robotoCondensed(
                                    color: Colors.grey,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 7.0),
                            child: Text(
                              'Rp. 999.999.999',
                              style: GoogleFonts.robotoCondensed(
                                color: Colors.red,
                                fontSize: 17.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )
                        ]),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                  ),
                ])),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Newsletter',
                  style: GoogleFonts.robotoCondensed(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                InkWell(
                  child: Text(
                    'See All',
                    style: GoogleFonts.robotoCondensed(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  onTap: () {
                    HomepageHome();
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 200,
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
                          Image.asset('assets/images/banner_newsletter.jpeg',
                              fit: BoxFit.fill),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 7.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  '4 June 2022',
                                  style: GoogleFonts.robotoCondensed(
                                    color: Colors.black54,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  'Tips jaga makan saat melakukan diet',
                                  style: GoogleFonts.robotoCondensed(
                                    color: Colors.black,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
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
                  const SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    width: 200,
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
                          Image.asset('assets/images/banner_newsletter.jpeg',
                              fit: BoxFit.fill),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 7.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  '4 June 2022',
                                  style: GoogleFonts.robotoCondensed(
                                    color: Colors.black54,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  'Tips jaga makan saat melakukan diet',
                                  style: GoogleFonts.robotoCondensed(
                                    color: Colors.black,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
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
                  const SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    width: 200,
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
                          Image.asset('assets/images/banner_newsletter.jpeg',
                              fit: BoxFit.fill),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 7.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  '4 June 2022',
                                  style: GoogleFonts.robotoCondensed(
                                    color: Colors.black54,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  'Tips jaga makan saat melakukan diet',
                                  style: GoogleFonts.robotoCondensed(
                                    color: Colors.black,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
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
                  const SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
