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
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Order History',
          style: GoogleFonts.robotoCondensed(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
          ),
        ),
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
                        height: 270, //height of TabBarView
                        decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(color: Colors.grey, width: 0.5)),
                        ),
                        child: TabBarView(children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5.0),
                            padding: EdgeInsets.symmetric(horizontal: 5.0),
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
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5.0),
                            padding: EdgeInsets.symmetric(horizontal: 5.0),
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
                            ),
                          ),
                        ]))
                  ])),
        ]),
      ),
    );
  }
}
