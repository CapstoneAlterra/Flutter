import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/classes_model.dart';

class ClassModel {
  Future<ClassesModel> fetchClassesModel() async {
    String classUrl = 'https://gym-dd-wgziwjr3rq-uc.a.run.app/class';
    final response = await http.get(Uri.parse(classUrl));
    if (response.statusCode == 200) {
      final jsonResponce = jsonDecode(response.body);

      return ClassesModel.fromJson(jsonResponce);
    } else {
      throw Exception('Error');
    }
  }
}
