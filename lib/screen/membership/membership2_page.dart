import 'package:flutter/material.dart';

import '../../widget/button_widget.dart';
import 'membership3_screen.dart';

class Membership2Screen extends StatefulWidget {
  const Membership2Screen({Key? key}) : super(key: key);

  @override
  State<Membership2Screen> createState() => _Membership2ScreenState();
}

class _Membership2ScreenState extends State<Membership2Screen> {
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
          child: Column(
            children: [
              SizedBox(
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
                      color: Colors.black)),
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
          ),
        ),
      ),
    );
  }
}
