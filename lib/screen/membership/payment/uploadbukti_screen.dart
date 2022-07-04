import 'package:flutter/material.dart';
// import 'package:flutter_gym_management_system/screen/membership/payment/uploadbukti2_screen.dart';
import 'package:flutter_gym_management_system/screen/membership/payment/uploadbukti3_screen.dart';
import 'package:flutter_gym_management_system/widget/button_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class UploadBukti extends StatefulWidget {
  const UploadBukti({Key? key}) : super(key: key);

  @override
  State<UploadBukti> createState() => _UploadBuktiState();
}

class _UploadBuktiState extends State<UploadBukti> {
  final _picker = ImagePicker();
  File? _image;

  _openImagePicker() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

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
                    child: _image == null
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 150,
                                      width: 200,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(5.0),
                                          ),
                                          color: Colors.grey[400]),
                                      child: OutlinedButton(
                                          onPressed: () {
                                            _openImagePicker();
                                          },
                                          // child: _image == null
                                          child: Icon(
                                            Icons.add_circle_rounded,
                                            size: 40.0,
                                            color: Colors.black,
                                          )
                                          // : Image.file(_image!, fit: BoxFit.cover),
                                          ),
                                    )),
                                Text(
                                  'Upload bukti kamu disini',
                                  style: GoogleFonts.robotoCondensed(
                                    fontSize: 15.0,
                                    color: Colors.black,
                                  ),
                                )
                              ])
                        : Image.file(_image!, fit: BoxFit.cover),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  Text(_image == null ? '' : _image!.path.split('/').last),
                  SizedBox(
                    height: 300.0,
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
