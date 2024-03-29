import 'package:flutter/material.dart';
import 'package:flutter_gym_management_system/screen/membership/payment/payment2_membership_screen.dart';
import 'package:flutter_gym_management_system/screen/membership/payment/payment_screen.dart';
// import 'package:flutter_gym_management_system/screen/membership/payment_membership_screen.dart';
import 'package:flutter_gym_management_system/widget/membership_form.dart';

import '../../widget/button_widget.dart';

class Membership3Screen extends StatefulWidget {
  const Membership3Screen({Key? key}) : super(key: key);

  @override
  State<Membership3Screen> createState() => _Membership3ScreenState();
}

class _Membership3ScreenState extends State<Membership3Screen> {
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
              Column(children: [
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: Column(
                    children: [
                      Text('Personal Details',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.black)),
                      MembersipFormWidget(hintText: 'No KTP'),
                      MembersipFormWidget(hintText: 'Nama Lengkap'),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text('Contact Details',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.black)),
                      MembersipFormWidget(hintText: 'Alamat Lengkap'),
                      // Center(
                      //   child: Row(
                      //     children: <Widget>[
                      //       Container(
                      //         width: 200,
                      //         decoration: BoxDecoration(
                      //           border: Border.all(
                      //             color: Colors.grey,
                      //             width: 0.5,
                      //           ),
                      //           borderRadius: BorderRadius.circular(5.0),
                      //         ),
                      //         child: TextField(
                      //           decoration: InputDecoration(
                      //             border: InputBorder.none,
                      //             contentPadding: EdgeInsets.symmetric(
                      //               horizontal: 10.0,
                      //               vertical: 15.0,
                      //             ),
                      //             hintText: 'Kode Pos',
                      //             hintStyle: TextStyle(
                      //               color: Colors.grey[400],
                      //               fontSize: 15.0,
                      //             ),
                      //           ),
                      //         ),
                      //       ),
                      //       Container(
                      //         width: 200,
                      //         decoration: BoxDecoration(
                      //           border: Border.all(
                      //             color: Colors.grey,
                      //             width: 0.5,
                      //           ),
                      //           borderRadius: BorderRadius.circular(5.0),
                      //         ),
                      //         child: TextField(
                      //           decoration: InputDecoration(
                      //             border: InputBorder.none,
                      //             contentPadding: EdgeInsets.symmetric(
                      //               horizontal: 10.0,
                      //               vertical: 15.0,
                      //             ),
                      //             hintText: 'Kode Pos',
                      //             hintStyle: TextStyle(
                      //               color: Colors.grey[400],
                      //               fontSize: 15.0,
                      //             ),
                      //           ),
                      //         ),
                      //       ),
                      MembersipFormWidget(hintText: 'Email'),
                      MembersipFormWidget(hintText: 'No HP eg. 08xxxxxxxx'),
                      SizedBox(
                        height: 10.0,
                      ),
                      ButtonWidget(
                          text: 'Next',
                          onClicked: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PaymentScreen(),
                              ),
                            );
                          }),
                    ],
                  ),
                ),
              ], crossAxisAlignment: CrossAxisAlignment.start),
            ])),
            // ]
          ),
          // ],
        ));

    // ));
  }
}
