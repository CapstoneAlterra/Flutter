import 'package:flutter/material.dart';
import 'package:flutter_gym_management_system/screen/membership/payment/payment2_membership_screen.dart';
import 'package:flutter_gym_management_system/widget/button_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
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
            child: SingleChildScrollView(
                child: Container(
                    child: Column(children: [
          Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Column(
                  children: [
                    Text('Your Membership Summary',
                        style: GoogleFonts.robotoCondensed(
                            fontSize: 17.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Start',
                            style: GoogleFonts.robotoCondensed(
                                fontSize: 15.0, color: Colors.grey)),
                        Text(
                          '27 Juni 2022',
                          style: GoogleFonts.robotoCondensed(
                              fontSize: 15.0,
                              color: Color.fromARGB(255, 237, 5, 5)),
                        )
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Duration',
                            style: GoogleFonts.robotoCondensed(
                                fontSize: 15.0, color: Colors.grey)),
                        Text(
                          '1 Month',
                          style: GoogleFonts.robotoCondensed(
                              fontSize: 15.0,
                              color: Color.fromARGB(255, 237, 5, 5)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Text('Your Total Payment',
                        style: GoogleFonts.robotoCondensed(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Membership / month',
                            style: GoogleFonts.robotoCondensed(
                                fontSize: 15.0, color: Colors.grey)),
                        Text(
                          'Rp. 100.000',
                          style: GoogleFonts.robotoCondensed(
                              fontSize: 15.0,
                              color: Color.fromARGB(255, 237, 5, 5)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Unlimited Class',
                            style: GoogleFonts.robotoCondensed(
                                fontSize: 15.0, color: Colors.grey)),
                        Text(
                          '-',
                          style: GoogleFonts.robotoCondensed(
                              fontSize: 15.0,
                              color: Color.fromARGB(255, 237, 5, 5)),
                        )
                      ],
                    ),
                    SizedBox(height: 1),
                    Image.asset(
                      'assets/images/Strip.png',
                      height: 5,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total Payment',
                            style: GoogleFonts.robotoCondensed(
                                fontSize: 15.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w600)),
                        Text(
                          '1 Month',
                          style: GoogleFonts.robotoCondensed(
                              fontSize: 15.0,
                              color: Color.fromARGB(255, 237, 5, 5)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      color: Color.fromARGB(255, 216, 171, 24),
                      width: double.infinity,
                      height: 35.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Hanya bisa transfer bank',
                            style: GoogleFonts.robotoCondensed(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Image.asset('assets/images/Mandiri.png', height: 34),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('  Bank Mandiri',
                                style: GoogleFonts.robotoCondensed(
                                    fontSize: 15.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                            Text(
                              '  Menerima Transfer dari semua bank',
                              style: GoogleFonts.robotoCondensed(
                                  fontSize: 15.0, color: Colors.black),
                            ),
                          ],
                          crossAxisAlignment: CrossAxisAlignment.start,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    ButtonWidget(
                        text: 'Confirm',
                        onClicked: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Payment2Screen(),
                            ),
                          );
                        }),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
              )
            ],
          ),
        ])))));
  }
}
