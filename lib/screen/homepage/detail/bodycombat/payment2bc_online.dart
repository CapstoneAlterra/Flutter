import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gym_management_system/screen/membership/payment/uploadbukti_screen.dart';
import 'package:flutter_gym_management_system/widget/button_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class Payment2BCClass extends StatefulWidget {
  const Payment2BCClass({Key? key}) : super(key: key);

  @override
  State<Payment2BCClass> createState() => _Payment2BCClassState();
}

class _Payment2BCClassState extends State<Payment2BCClass> {
  bool _customTileExpanded = false;

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
          title: Text(
            'Payment Info',
            style: GoogleFonts.robotoCondensed(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total Payment',
                          style: GoogleFonts.robotoCondensed(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.black)),
                      Text(
                        'Rp. 50.000',
                        style: GoogleFonts.robotoCondensed(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 233, 5, 5)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Image.asset(
                    'assets/images/Strip.png',
                    height: 5.0,
                    width: 30000,
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Image.asset('assets/images/Mandiri.png',
                                  height: 50),
                              Text(
                                '   Bank Mandiri',
                                style: GoogleFonts.robotoCondensed(
                                    fontSize: 15.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                          Image.asset(
                            'assets/images/Group25.png',
                            height: 50.0,
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'No. Virtual Account',
                            style: GoogleFonts.robotoCondensed(
                              fontSize: 15.0,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('897101201272518129',
                                  style: GoogleFonts.robotoCondensed(
                                      fontSize: 18.0,
                                      color: Color.fromARGB(255, 233, 5, 5),
                                      fontWeight: FontWeight.w600)),
                              InkWell(
                                onTap: () {
                                  Clipboard.setData(ClipboardData(
                                          text: '897101201272518129'))
                                      .then((value) =>
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(SnackBar(
                                                  content: Text('Copied'))));
                                },
                                child: Text(
                                  'SALIN',
                                  style: GoogleFonts.robotoCondensed(
                                    fontSize: 15.0,
                                    color: Color.fromARGB(255, 233, 5, 5),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Virtual Account berlaku sampai 4 jam (12.15)',
                            style: GoogleFonts.robotoCondensed(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 44, 155, 247),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Menerima transfer dari semua bank',
                            style: GoogleFonts.robotoCondensed(fontSize: 15.0),
                          )
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
                    height: 20,
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        child: ExpansionTile(
                          title: Text(
                            'Pembayaran transfer ATM',
                            style: GoogleFonts.robotoCondensed(),
                          ),
                          children: <Widget>[
                            ListTile(
                                title: Text(
                              ' 1. Pilih lainnya pada menu utama. \n 2. Pilih Transfer. \n 3. Pilih Dari Rekening Tabungan. \n 4. Pilih Ke Rekening Mandiri \n 5. Masukkan Nomor Rekening Pembayaran. \n 6. Masukkan jumlah yang harus dibayar. \n 7. Konfirmasi pembayaran \n 8. Pembayaran Selesai',
                              style: GoogleFonts.robotoCondensed(),
                            )),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        child: ExpansionTile(
                          title: Text(
                            'Pembayaran transfer iBanking',
                            style: GoogleFonts.robotoCondensed(),
                          ),
                          children: <Widget>[
                            ListTile(
                                title: Text(
                              '  1. Pilih lainnya pada menu utama \n 2. Pilih Transfer \n 3. Pilih Dari Rekening Tabungan \n 4. Pilih ke Rekening Mandiri \n 5. Masukkan Nomor Rekening Pembayaran \n 6. Masukkan jumlah yang harus dibayar \n 7. Konfirmasi Pembayaran \n 8. Pembayaran Selesai ',
                              style: GoogleFonts.robotoCondensed(),
                            )),
                          ],
                        ),
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
                        height: 10,
                      ),
                      Container(
                        child: ExpansionTile(
                          title: Text('Pembayaran transfer mBanking',
                              style: GoogleFonts.robotoCondensed()),
                          children: <Widget>[
                            ListTile(
                                title: Text(
                              '  1. Pilih lainnya pada menu utama \n 2. Pilih Transfer \n 3. Pilih Dari Rekening Tabungan \n 4. Pilih ke Rekening Mandiri \n 5. Masukkan Nomor Rekening Pembayaran \n 6. Masukkan jumlah yang harus dibayar \n 7. Konfirmasi Pembayaran \n 8. Pembayaran Selesai ',
                              style: GoogleFonts.robotoCondensed(),
                            )),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  ButtonWidget(
                      text: 'Upload sekarang',
                      onClicked: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UploadBukti(),
                          ),
                        );
                      })
                ]))
          ])
        ])))));
  }
}
