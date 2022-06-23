import 'package:flutter/material.dart';
import 'package:flutter_gym_management_system/widget/date_widget.dart';

import '../../widget/button_widget.dart';
import 'membership3_screen.dart';

class Membership2Screen extends StatefulWidget {
  const Membership2Screen({Key? key}) : super(key: key);

  @override
  State<Membership2Screen> createState() => _Membership2ScreenState();
}

class _Membership2ScreenState extends State<Membership2Screen> {
  final isSelected = <bool>[false, false, false];

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
          child: Container(
            child: Column(children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20.0,
                      ),
                      Text('Pilih tanggal mulai membership',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.black)),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text('Mulai wujudkan impianmu besama kami',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey)),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text('Penawaran untuk para membership',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.black)),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text('Pilih Kelas untuk memaksimalkan progressmu',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey)),
                      SizedBox(
                        height: 20.0,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: ToggleButtons(
                            // scrollDirection: Axis.horizontal,
                            color: Colors.black,
                            selectedColor: Color.fromARGB(255, 237, 5, 5),
                            selectedBorderColor: Color.fromARGB(255, 237, 5, 5),
                            fillColor: Color.fromARGB(255, 237, 5, 5),
                            splashColor: Color.fromARGB(255, 237, 5, 5),
                            borderColor: Colors.grey,
                            onPressed: (int index) {
                              setState(() {
                                for (int buttonIndex = 0;
                                    buttonIndex < isSelected.length;
                                    buttonIndex++) {
                                  if (buttonIndex == index) {
                                    isSelected[buttonIndex] = true;
                                  } else {
                                    isSelected[buttonIndex] = false;
                                  }
                                }
                              });
                            },
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child: Text(
                                    'Unlimited Radio Class \n + Rp. 45.000',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    )),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child: Text(
                                    'Unlimited Strength Class \n Rp. 45.000',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    )),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child:
                                    Text('Unlimited Dance Class \n Rp. 45.000',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        )),
                              ),
                            ],
                            isSelected: isSelected),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      ButtonWidget(
                          text: 'Next',
                          onClicked: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Membership3Screen(),
                              ),
                            );
                          }),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                  )),
            ]),
          ),
        ));
  }
}
