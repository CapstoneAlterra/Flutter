import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../service/auth.dart';
import '../model/register_model.dart';

class RegisterViewModel with ChangeNotifier {
  String message = '';

  Future<void> register(RegisterModel data) async {
    try {
      var response = await Auth().register(data: data);
      message = response.data['message'].toString();
    } on DioError catch (e) {
      message = e.response!.data;
    }
  }
}
