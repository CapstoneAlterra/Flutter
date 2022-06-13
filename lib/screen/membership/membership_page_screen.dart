import 'package:flutter/material.dart';
import 'package:flutter_gym_management_system/widget/button_widget.dart';

import 'membership2_page.dart';

class MembershipScreen extends StatefulWidget {
  const MembershipScreen({Key? key}) : super(key: key);

  @override
  State<MembershipScreen> createState() => _MembershipScreenState();
}

class _MembershipScreenState extends State<MembershipScreen> {
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
        child: Container(
          child: Column(children: [
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(
                color: Color.fromARGB(255, 237, 5, 5),
                width: double.infinity,
                height: 130.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/Logo.png',
                      height: 75,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Membership Card',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Apa itu Membership GymBud?',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Membership GymBud adalah penawaran yang diberikan oleh kami kepada pengguna kami yang memberikan beberapa manfaat yaitu: \n 1. Full acces terhadap fasilitas gym \n 2. Promo kelas dengan harga menarik',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            ButtonWidget(
                text: 'Next',
                onClicked: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Membership2Screen(),
                    ),
                  );
                }),
          ]),
        ),
      ),
    );
  }
}
