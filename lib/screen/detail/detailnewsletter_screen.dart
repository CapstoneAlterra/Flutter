import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailNewsletter extends StatelessWidget {
  const DetailNewsletter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    child: Column(children: [
                      Image.asset('assets/images/banner_newsletter.jpeg'),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Tips jaga makan saat melakukan diet',
                        style: GoogleFonts.robotoCondensed(
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            '4 June 2022  Dikutip dari ',
                            style:
                                GoogleFonts.robotoCondensed(color: Colors.grey),
                          ),
                          Text(
                            'Alodokter',
                            style: GoogleFonts.robotoCondensed(
                                color: Colors.blueAccent),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                          'Diet kerap digunakan sebagai cara untuk mendapatkan berat badan ideal. Nmaun, pola makan untuk diet sehat bukan berarti harus dilakukan dengna melewatkan waktu makan. Untuk mengetahui cara tepat menjalani diet sehat, simak penjelasannya dalam artikel berikut. \n Kunci diet',
                          style: GoogleFonts.robotoCondensed())
                    ])))));
  }
}
