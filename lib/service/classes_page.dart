import 'dart:convert';

import 'package:flutter_gym_management_system/model/classes_model.dart';
import 'package:http/http.dart' as http;

class ClassModel {
  Future<ClassesModel> fetchClassesModel() async {
    String newsUrl = '';
    final response = await http.get(Uri.parse(newsUrl));
    if (response.statusCode == 200) {
      final jsonResponce = jsonDecode(response.body);

      return ClassesModel.fromJson(jsonResponce);
    } else {
      throw Exception('Error');
    }
  }
}
