import 'package:flutter/material.dart';
import 'package:flutter_gym_management_system/screen/login_register/register/verification_code_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../../widget/button_widget.dart';
import '../../../widget/form_widget.dart';

class Register2 extends StatefulWidget {
  const Register2({Key? key}) : super(key: key);

  @override
  State<Register2> createState() => _Register2State();
}

class _Register2State extends State<Register2> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Daftar',
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
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(children: [
                      Column(
                        children: [
                          Image.asset('assets/images/3.png'),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            'Mobile Number',
                            style: GoogleFonts.robotoCondensed(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Form(
                              key: formKey,
                              child: Container(
                                  child: Column(children: <Widget>[
                                InternationalPhoneNumberInput(
                                  onInputChanged: (PhoneNumber number) {
                                    print(number.phoneNumber);
                                  },
                                  onInputValidated: (bool value) {
                                    print(value);
                                  },
                                  selectorConfig: SelectorConfig(
                                    selectorType: PhoneInputSelectorType.DIALOG,
                                  ),
                                  ignoreBlank: false,
                                  autoValidateMode: AutovalidateMode.disabled,
                                  selectorTextStyle:
                                      TextStyle(color: Colors.black),
                                  initialValue: number,
                                  textFieldController: controller,
                                  formatInput: false,
                                  keyboardType: TextInputType.numberWithOptions(
                                      signed: true, decimal: false),
                                  inputBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  onSaved: (PhoneNumber number) {
                                    print('onSaved: $number');
                                  },
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                ButtonWidget(
                                    text: 'Next',
                                    onClicked: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(builder: (context) {
                                        return VerificationCode();
                                      }));
                                    })
                              ])))
                        ],
                        crossAxisAlignment: CrossAxisAlignment.start,
                      )
                    ])))));
  }
}
