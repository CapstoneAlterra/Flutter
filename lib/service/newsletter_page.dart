import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/newsletter_model.dart';

class NewslettersModel {
  Future<NewsletterModel> fetchNewsletterModel() async {
    String newsUrl = '';
    final response = await http.get(Uri.parse(newsUrl));
    if (response.statusCode == 200) {
      final jsonResponce = jsonDecode(response.body);

      return NewsletterModel.fromJson(jsonResponce);
    } else {
      throw Exception('Error');
    }
  }
}
