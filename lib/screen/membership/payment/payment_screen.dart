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
          'Membership',
          style: GoogleFonts.robotoCondensed(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      color: Color.fromARGB(255, 217, 221, 223),
                      width: double.infinity,
                      height: 15.0,
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Your Membership Summary',
                                  style: GoogleFonts.robotoCondensed(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Start date',
                                  style: GoogleFonts.robotoCondensed(
                                      fontSize: 15.0, color: Colors.black),
                                ),
                                Text(
                                  '27 Juni 2022',
                                  style: GoogleFonts.robotoCondensed(
                                    fontSize: 15.0,
                                    color: Color.fromARGB(255, 237, 5, 5),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Duration',
                                  style: GoogleFonts.robotoCondensed(
                                      fontSize: 15.0, color: Colors.black),
                                ),
                                Text(
                                  '1 Month',
                                  style: GoogleFonts.robotoCondensed(
                                    fontSize: 15.0,
                                    color: Color.fromARGB(255, 237, 5, 5),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: Color.fromARGB(255, 217, 221, 223),
                      width: double.infinity,
                      height: 15.0,
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Your Total Payment',
                                  style: GoogleFonts.robotoCondensed(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Membership / Month',
                                  style: GoogleFonts.robotoCondensed(
                                      fontSize: 15.0, color: Colors.black),
                                ),
                                Text(
                                  'Rp. 100.000',
                                  style: GoogleFonts.robotoCondensed(
                                    fontSize: 15.0,
                                    color: Color.fromARGB(255, 237, 5, 5),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Unlimited Class / Month',
                                  style: GoogleFonts.robotoCondensed(
                                      fontSize: 15.0, color: Colors.black),
                                ),
                                Text(
                                  '-',
                                  style: GoogleFonts.robotoCondensed(
                                    fontSize: 15.0,
                                    color: Color.fromARGB(255, 237, 5, 5),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              color: Colors.red,
                              width: double.infinity,
                              height: 2,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Total Payment',
                                  style: GoogleFonts.robotoCondensed(
                                    fontSize: 15.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Rp. 100.000',
                                  style: GoogleFonts.robotoCondensed(
                                    fontSize: 15.0,
                                    color: Color.fromARGB(255, 237, 5, 5),
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: Color.fromARGB(255, 217, 221, 223),
                      width: double.infinity,
                      height: 15.0,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              color: Color.fromARGB(255, 212, 165, 1),
                              width: double.infinity,
                              height: 30,
                              child: Text(
                                'Hanya bisa transfer Bank',
                                style: GoogleFonts.robotoCondensed(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/Mandiri.png',
                                  height: 50,
                                ),
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
                              height: 100,
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
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
