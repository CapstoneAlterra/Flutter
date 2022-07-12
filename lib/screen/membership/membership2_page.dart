import 'package:flutter/material.dart';
import 'package:flutter_gym_management_system/widget/date_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../widget/button_widget.dart';
import 'membership3_screen.dart';

class Membership2Screen extends StatefulWidget {
  const Membership2Screen({Key? key}) : super(key: key);

  @override
  State<Membership2Screen> createState() => _Membership2ScreenState();
}

class _Membership2ScreenState extends State<Membership2Screen> {
  final isSelected = <bool>[false, false, false];
  final _controllerDate = TextEditingController();

  DateTime _dueDate = DateTime.now();
  final currentDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Membership',
            style: GoogleFonts.robotoCondensed(
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
                          style: GoogleFonts.robotoCondensed(
                              fontSize: 17.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.black)),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text('Mulai wujudkan impianmu besama kami',
                          style: GoogleFonts.robotoCondensed(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey)),
                      SizedBox(height: 20),
                      TextFormField(
                        onTap: () async {
                          final selectDate = await showDatePicker(
                            context: context,
                            initialDate: currentDate,
                            firstDate: DateTime(1990),
                            lastDate: DateTime(2050),
                          );
                          setState(() {
                            if (selectDate != null) {
                              _dueDate = selectDate;
                              _controllerDate.text =
                                  DateFormat('dd/MM/yyyy').format(_dueDate);
                            }
                          });
                        },
                        controller: _controllerDate,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'dd/mm/yyyy',
                            prefixIcon: Icon(Icons.calendar_today_rounded)),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Tanggal tidak boleh kosong';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text('Penawaran untuk para membership',
                          style: GoogleFonts.robotoCondensed(
                              fontSize: 17.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.black)),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text('Pilih Kelas untuk memaksimalkan progressmu',
                          style: GoogleFonts.robotoCondensed(
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
                                padding: EdgeInsets.symmetric(horizontal: 5.0),
                                child: Column(
                                  children: [
                                    SizedBox(height: 7),
                                    Text('Unlimited Radio Class',
                                        style: GoogleFonts.robotoCondensed(
                                          color: Colors.black,
                                        )),
                                    Text('+ 45.000 / month',
                                        style: GoogleFonts.robotoCondensed(
                                          color: Color.fromARGB(255, 237, 5, 5),
                                        )),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5.0),
                                child: Column(
                                  children: [
                                    SizedBox(height: 7),
                                    Text('Unlimited Strength Class',
                                        style: GoogleFonts.robotoCondensed(
                                          color: Colors.black,
                                        )),
                                    Text('+ 45.000 / month',
                                        style: GoogleFonts.robotoCondensed(
                                          color: Color.fromARGB(255, 237, 5, 5),
                                        )),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5.0),
                                child: Column(
                                  children: [
                                    SizedBox(height: 7),
                                    Text('Unlimited Dance Class',
                                        style: GoogleFonts.robotoCondensed(
                                          color: Colors.black,
                                        )),
                                    Text('+ 45.000',
                                        style: GoogleFonts.robotoCondensed(
                                          color: Color.fromARGB(255, 237, 5, 5),
                                        )),
                                  ],
                                ),
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
