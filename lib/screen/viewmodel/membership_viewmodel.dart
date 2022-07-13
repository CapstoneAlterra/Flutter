import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:login_register/service/membership_page.dart';

import '../model/membership_model.dart';

class MembershipViewModel with ChangeNotifier {
  String message = '';

  Future<void> membership(MembershipModel data) async {
    try {
      var response = await Membership().membership(data: data);
      message = response.data['message'].toString();
    } on DioError catch (e) {
      message = e.response!.data;
    }
  }
}
