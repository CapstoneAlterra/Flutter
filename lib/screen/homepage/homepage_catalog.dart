import 'package:flutter/material.dart';
import 'package:flutter_gym_management_system/screen/homepage/detail/bodycombat/detailbc_online.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widget/customdropdownbutton2.dart';
import 'notification/notification_screen.dart';

class HomepageCatalog extends StatefulWidget {
  const HomepageCatalog({Key? key}) : super(key: key);

  @override
  State<HomepageCatalog> createState() => _HomepageCatalogState();
}

class _HomepageCatalogState extends State<HomepageCatalog> {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomDropdownButton2(
                    hint: 'Class',
                    dropdownItems: kelas,
                    value: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  CustomDropdownButton2(
                    hint: 'Category',
                    dropdownItems: category,
                    value: selectedCategory,
                    onChanged: (value) {
                      setState(() {
                        selectedCategory = value;
                      });
                    },
                  ),
                ],
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
                                builder: (context) => DetailBCActivity()));
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
                                        'assets/images/bodycombat.png',
                                        width: 200,
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
                                              'Online',
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
                                                  255, 0, 202, 229),
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
                                  //     fontWeight: FontWeight.w400,
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
                                      fontWeight: FontWeight.w400,
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
                                    '14:00',
                                    style: GoogleFonts.robotoCondensed(
                                      color: Colors.black,
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
                                'Rp. 50.000',
                                style: GoogleFonts.robotoCondensed(
                                  color: Colors.red,
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w600,
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
                  Container(
                    width: 180,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailBCActivity()));
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
                                        'assets/images/bodycombat.png',
                                        width: 200,
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
                                              'Online',
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
                                                  255, 0, 202, 229),
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
                                  //     fontWeight: FontWeight.w400,
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
                                      fontWeight: FontWeight.w400,
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
                                    '14:00',
                                    style: GoogleFonts.robotoCondensed(
                                      color: Colors.black,
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
                                'Rp. 50.000',
                                style: GoogleFonts.robotoCondensed(
                                  color: Colors.red,
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w600,
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
