import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gym_management_system/widget/button_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailActivity extends StatelessWidget {
  const DetailActivity({Key? key}) : super(key: key);

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
                    'Rp. 45.000',
                    style: GoogleFonts.robotoCondensed(
                        color: Color.fromARGB(255, 233, 27, 12)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Cardio',
                    style: GoogleFonts.robotoCondensed(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'BodyCombat',
                    style: GoogleFonts.robotoCondensed(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10),
                              Text(
                                'Monday, 2 June',
                                style: GoogleFonts.robotoCondensed(
                                    color: Colors.grey),
                              ),
                              SizedBox(height: 10),
                            ]),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10),
                              Text(
                                '21.00 - 22.00',
                                style: GoogleFonts.robotoCondensed(
                                    color: Colors.grey),
                              ),
                              SizedBox(height: 10),
                            ]),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Anda akan melatih kaki Anda dan mengencangkan lengan, punggung dan bahu Anda. Inti Anda juga akan mendapatkan latihan inti yang fenomenal saat Anda membakar kalori dan mengembangkan koordinasi, kelincahan dan kecetan Anda',
                    style: GoogleFonts.robotoCondensed(color: Colors.black),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Trainer',
                    style: GoogleFonts.robotoCondensed(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/Avatar.png'),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '   Irwan',
                        style: GoogleFonts.robotoCondensed(color: Colors.black),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Benefits',
                    style: GoogleFonts.robotoCondensed(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    ' 1. Membakar kalori dengan lebih signifikan \n 2. Membuat tubuh anda bugar dan kuat \n 3. Menaikkan energi anda',
                    style: GoogleFonts.robotoCondensed(
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Media',
                    style: GoogleFonts.robotoCondensed(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/Zoom.png',
                        height: 25,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '   Zoom Meeting',
                        style: GoogleFonts.robotoCondensed(color: Colors.black),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ButtonWidget(
                      text: 'Link Zoom',
                      onClicked: () {
                        showModalBottomSheet<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                padding: EdgeInsets.symmetric(horizontal: 30),
                                height: 200,
                                color: Colors.white,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  // mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text(
                                      '                                        Zoom Meeting',
                                      style: GoogleFonts.robotoCondensed(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Hari               : Monday, 2 June 2022',
                                      style: GoogleFonts.robotoCondensed(),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Pukul             : 21.00 - 22.00',
                                      style: GoogleFonts.robotoCondensed(),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Topic             : Class BodyCombat (Cardio)',
                                      style: GoogleFonts.robotoCondensed(),
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Text(
                                          'Link               : ',
                                          style: GoogleFonts.robotoCondensed(),
                                        ),
                                        Text(
                                          'https://zoom.us/j/953619853927 ..',
                                          style: GoogleFonts.robotoCondensed(
                                              color: Colors.blue),
                                        ),
                                        InkWell(
                                            onTap: () {
                                              Clipboard.setData(ClipboardData(
                                                      text:
                                                          'https://zoom.us/j/953619853927 ..'))
                                                  .then((value) =>
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(SnackBar(
                                                              content: Text(
                                                                  'Copied'))));
                                            },
                                            child: Icon(
                                              Icons.copy,
                                              color: Colors.grey,
                                            )),
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Text(
                                          'Meeting ID   : ',
                                          style: GoogleFonts.robotoCondensed(),
                                        ),
                                        Text(
                                          '334290019008',
                                          style: GoogleFonts.robotoCondensed(
                                              color: Colors.blue),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                  ],
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                ),
                              );
                            });
                      })
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              )),
        )));
  }
}
