import 'package:flutter/material.dart';
import 'package:flutter_gym_management_system/screen/membership/payment/uploadbukti3_screen.dart';
import 'package:flutter_gym_management_system/widget/button_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class Upload2Bukti extends StatefulWidget {
  const Upload2Bukti({Key? key, required this.image}) : super(key: key);
  final File? image;

  @override
  State<Upload2Bukti> createState() => _Upload2BuktiState();
}

class _Upload2BuktiState extends State<Upload2Bukti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Upload Bukti',
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
                child: Column(children: [
                  Container(
                    width: 500,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: widget.image != null
                                  ? Image.file(widget.image!, fit: BoxFit.cover)
                                  : const Text(''),
                            ),
                          ),
                        ]),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  SizedBox(
                    height: 150,
                  ),
                  ButtonWidget(
                      text: 'Submit',
                      onClicked: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Upload3Bukti(),
                          ),
                        );
                      })
                ]))
          ])
        ])))));
  }
}
