import 'package:flutter/material.dart';
import 'package:flutter_gym_management_system/model/classes_model.dart';
// import 'package:login_register/model/classes_model.dart';

import '../service/classes_page.dart';

class ClassViewModel extends ChangeNotifier {
  List<ClassesModel> _classes = [];

  Future<ClassesModel> fetchNews() async {
    final myApiResult = await ClassModel().fetchClassesModel();

    return myApiResult;
  }

  static fetchClassesModel() {}
}
