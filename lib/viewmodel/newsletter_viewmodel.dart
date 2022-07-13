import 'package:flutter/material.dart';

import '../model/newsletter_model.dart';
import '../service/newsletter_page.dart';

class NewsletterViewModel extends ChangeNotifier {
  List<NewsletterModel> _newsletter = [];

  Future<NewsletterModel> fetchNews() async {
    final myApiResult = await NewslettersModel().fetchNewsletterModel();

    return myApiResult;
  }
}
