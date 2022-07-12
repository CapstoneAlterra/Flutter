import 'package:flutter/material.dart';
import 'package:flutter_gym_management_system/screen/homepage/Profile/editprofile_screen.dart';
import 'package:flutter_gym_management_system/screen/homepage/Profile/orderhistory_screen.dart';
import 'package:flutter_gym_management_system/widget/button3_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import '../../widget/button_widget.dart';
import '../membership/membership_page_screen.dart';

class HomepageProfile extends StatefulWidget {
  const HomepageProfile({Key? key}) : super(key: key);

  @override
  State<HomepageProfile> createState() => _HomepageProfileState();
}

class _HomepageProfileState extends State<HomepageProfile> {
  late PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Profile',
          style: GoogleFonts.robotoCondensed(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10.0,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: Image.asset(
                      'assets/images/banner_kelas.jpg',
                      width: 125,
                      height: 125,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  // imageProfile(),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Hallo, {Username}',
                    style: GoogleFonts.robotoCondensed(
                      color: Colors.black,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                      color: Color.fromARGB(255, 237, 5, 5),
                      width: double.infinity,
                      // height: 100.0,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(children: [
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20)),
                              Column(
                                children: [
                                  SizedBox(height: 25),
                                  Text(
                                    'Join Membership Now',
                                    style: GoogleFonts.robotoCondensed(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Get your new experience with us',
                                    style: GoogleFonts.robotoCondensed(
                                      fontSize: 18.0,
                                      color: Colors.white70,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                              Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 9)),
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              MembershipScreen()));
                                },
                                icon: Icon(
                                  Icons.arrow_circle_right_outlined,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ]),
                          ])),
                  SizedBox(height: 20),
                  Text(
                    'Account',
                    style: GoogleFonts.robotoCondensed(
                        fontWeight: FontWeight.w600, fontSize: 15),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Button3Widget(
                      text: 'Edit Profile',
                      onClicked: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditProfile()));
                      }),
                  SizedBox(height: 10),
                  Button3Widget(
                      text: 'Order History',
                      onClicked: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OrderHistory()));
                      })
                ],
              ),
            ),
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }

  // Widget imageProfile() {
  //   return Center(
  //     child: Stack(
  //       children: <Widget>[
  //         CircleAvatar(
  //           radius: 80,
  //           backgroundImage:
  //               _imageFile == null ? null : FileImage(File(_imageFile.path)),
  //         ),
  //         Positioned(
  //             child: InkWell(
  //           onTap: () {
  //             showModalBottomSheet(
  //               context: context,
  //               builder: ((builder) => bottomSheet()),
  //             );
  //           },
  //           child: Icon(
  //             Icons.camera_alt,
  //             color: Colors.teal,
  //             size: 28,
  //           ),
  //         ))
  //       ],
  //     ),
  //   );
  // }

  // Widget bottomSheet() {
  //   return Container(
  //     height: 100.0,
  //     width: MediaQuery.of(context).size.width,
  //     margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
  //     child: Column(
  //       children: <Widget>[
  //         Text(
  //           'Choose Profile Photo',
  //           style: GoogleFonts.robotoCondensed(fontSize: 20),
  //         ),
  //         SizedBox(
  //           height: 20,
  //         ),
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: <Widget>[
  //             FlatButton.icon(
  //                 onPressed: () {
  //                   takePhoto(ImageSource.camera);
  //                 },
  //                 icon: Icon(Icons.camera),
  //                 label: Text('Camera')),
  //             FlatButton.icon(
  //                 onPressed: () {
  //                   takePhoto(ImageSource.gallery);
  //                 },
  //                 icon: Icon(Icons.image),
  //                 label: Text('Gallery')),
  //           ],
  //         )
  //       ],
  //     ),
  //   );
  // }

  // void takePhoto(ImageSource source) async {
  //   final pickedFile = await _picker.getImage(source: source);
  //   setState(() {
  //     _imageFile = pickedFile!;
  //   });
  // }
}
