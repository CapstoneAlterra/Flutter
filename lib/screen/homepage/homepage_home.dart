import 'package:flutter/material.dart';

class HomepageHome extends StatefulWidget {
  const HomepageHome({Key? key}) : super(key: key);

  @override
  State<HomepageHome> createState() => _HomepageHomeState();
}

class _HomepageHomeState extends State<HomepageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/Logo.png',
          height: 50.0,
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
