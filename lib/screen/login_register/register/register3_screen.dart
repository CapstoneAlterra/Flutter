import 'package:flutter/material.dart';
import 'package:flutter_gym_management_system/screen/login_register/register/verification_code_screen.dart';
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
                    child: Column(children: [
          Column(children: [
            const SizedBox(
              height: 20.0,
            ),
            Text(
              'Mobile Number',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Column(children: [
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
                          selectorTextStyle: TextStyle(color: Colors.black),
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
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return VerificationCode();
                              }));
                            })
                      ])))
                ]))
          ])
        ])))));
  }
}
