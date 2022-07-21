import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../model/class_dummy.dart';
import '../membership/membership_page_screen.dart';
import 'notification/notification_screen.dart';

class MyHome extends StatefulWidget {
  final int index;
  final Classed data;

  MyHome(this.index, this.data);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
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
                margin: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 15.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MembershipScreen()));
                        },
                        child: Container(
                            color: Color.fromARGB(255, 237, 5, 5),
                            width: double.infinity,
                            // height: 100.0,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(children: [
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20)),
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
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 9)),
                                    IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    MembershipScreen()));
                                      },
                                      icon: Icon(
                                        Icons.arrow_circle_right_outlined,
                                        size: 30,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ]),
                                ])),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                      SizedBox(
                        height: 10.0,
                      ),
                      ListView.builder(
                        itemCount: widget.data.id,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: ((context, index) {
                          return Container(
                            width: 170,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Positioned(
                                    child: InkWell(
                                      onTap: () {},
                                      child: Column(
                                        children: [
                                          Image.asset('${widget.data.image}',
                                              fit: BoxFit.fill),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 7.0, vertical: 5.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text(
                                          'Cardio',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                        Text(
                                          '22/07/22',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 7.0),
                                    child: const Text(
                                      'BodyCombat',
                                      style: TextStyle(
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
                                        EdgeInsets.symmetric(horizontal: 7.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                          '${widget.data.time}',
                                          style: TextStyle(
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
                                        EdgeInsets.symmetric(horizontal: 7.0),
                                    child: Text(
                                      '${widget.data.price}',
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
                          );
                        }),
                      )
                    ]))));
  }
}
