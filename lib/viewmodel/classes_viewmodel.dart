import 'package:flutter/material.dart';
import 'package:flutter_gym_management_system/model/classes_model.dart';
import 'package:flutter_gym_management_system/service/classes_page.dart';

class HomeViewModel extends ChangeNotifier {
  List<ClassesModel> _classes = [];

  Future<ClassesModel> fetchNews() async {
    final myApiResult = await ClassModel().fetchClassesModel();

    return myApiResult;
  }
}
