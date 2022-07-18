import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_gym_management_system/widget/button_widget.dart';
import 'package:google_fonts/google_fonts.dart';

import 'paymentclass.dart/paymentclass_screen.dart';

class DetailNewsLetter extends StatelessWidget {
  const DetailNewsLetter({Key? key}) : super(key: key);

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
              child: Column(
                children: [
                  Image.asset('assets/images/detail_kelas.png'),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Tips jaga makanan saat melakukan diet',
                    style: GoogleFonts.robotoCondensed(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '4 June 2022 - Dikutip dari Alodokter',
                    style: GoogleFonts.robotoCondensed(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Pellentesque posuere. Nam at tortor in tellus interdum sagittis. Praesent congue erat at massa. Praesent egestas neque eu enim.',
                    style: GoogleFonts.robotoCondensed(color: Colors.black),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ButtonWidget(
                      text: 'Next',
                      onClicked: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PaymentClass(),
                          ),
                        );
                      }),
                  SizedBox(
                    height: 30,
                  )
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              )),
        )));
  }
}
