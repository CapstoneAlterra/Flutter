import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../detail/paymentclass.dart/paymentclass_screen.dart';

class OrderHistory extends StatefulWidget {
  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order History'),
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(children: <Widget>[
          SizedBox(height: 10.0),
          DefaultTabController(
              length: 2, // length of tabs
              initialIndex: 0,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: TabBar(
                        labelColor: Color.fromARGB(255, 233, 5, 5),
                        unselectedLabelColor: Colors.grey,
                        tabs: [
                          Tab(
                            text: 'Belum Bayar',
                          ),
                          Tab(text: 'Selesai'),
                        ],
                      ),
                    ),
                    Container(
                        height: 253.5, //height of TabBarView
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    color: Colors.grey, width: 0.5))),
                        child: TabBarView(children: <Widget>[
                          Container(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PaymentClass(),
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/detail_kelas.png',
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Cardio',
                                          style: GoogleFonts.robotoCondensed()),
                                      Row(children: [
                                        Icon(
                                          Icons.access_time,
                                          size: 18,
                                        ),
                                        Text(
                                          ' 21.00 - 22.00',
                                          style: GoogleFonts.robotoCondensed(),
                                        )
                                      ])
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Body Combat',
                                        style: GoogleFonts.robotoCondensed(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        '22/06/2022',
                                        style: GoogleFonts.robotoCondensed(),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          Container(
                            child: InkWell(
                              onTap: () {
                                showModalBottomSheet<void>(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 30),
                                        height: 200,
                                        color: Colors.white,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          // mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Text(
                                              '                                        Zoom Meeting',
                                              style:
                                                  GoogleFonts.robotoCondensed(
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              'Hari               : Monday, 2 June 2022',
                                              style:
                                                  GoogleFonts.robotoCondensed(),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              'Pukul             : 21.00 - 22.00',
                                              style:
                                                  GoogleFonts.robotoCondensed(),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              'Topic             : Class BodyCombat (Cardio)',
                                              style:
                                                  GoogleFonts.robotoCondensed(),
                                            ),
                                            SizedBox(height: 5),
                                            Row(
                                              children: [
                                                Text(
                                                  'Link               : ',
                                                  style: GoogleFonts
                                                      .robotoCondensed(),
                                                ),
                                                Text(
                                                  'https://zoom.us/j/953619853927 ..',
                                                  style: GoogleFonts
                                                      .robotoCondensed(
                                                          color: Colors.blue),
                                                ),
                                                InkWell(
                                                    onTap: () {
                                                      Clipboard.setData(
                                                              ClipboardData(
                                                                  text:
                                                                      'https://zoom.us/j/953619853927 ..'))
                                                          .then((value) => ScaffoldMessenger
                                                                  .of(context)
                                                              .showSnackBar(SnackBar(
                                                                  content: Text(
                                                                      'Copied'))));
                                                    },
                                                    child: Icon(
                                                      Icons.copy,
                                                      color: Colors.grey,
                                                    )),
                                              ],
                                            ),
                                            SizedBox(height: 5),
                                            Row(
                                              children: [
                                                Text(
                                                  'Meeting ID   : ',
                                                  style: GoogleFonts
                                                      .robotoCondensed(),
                                                ),
                                                Text(
                                                  '334290019008',
                                                  style: GoogleFonts
                                                      .robotoCondensed(
                                                          color: Colors.blue),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 5),
                                          ],
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                        ),
                                      );
                                    });
                              },
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/detail_kelas.png',
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Cardio',
                                          style: GoogleFonts.robotoCondensed()),
                                      Row(children: [
                                        Icon(
                                          Icons.access_time,
                                          size: 18,
                                        ),
                                        Text(
                                          ' 21.00 - 22.00',
                                          style: GoogleFonts.robotoCondensed(),
                                        )
                                      ])
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Body Combat',
                                        style: GoogleFonts.robotoCondensed(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        '22/06/2022',
                                        style: GoogleFonts.robotoCondensed(),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ]))
                  ])),
        ]),
      ),
    );
  }
}
