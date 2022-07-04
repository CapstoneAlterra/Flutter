import 'package:flutter/material.dart';

import 'package:flutter_gym_management_system/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
// MultiProvider(
//       providers: [
//         ChangeNotifierProvider<ClassModel>(
//             create: (_) => ClassModel()),
//       ],
//     );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GYM MEMBERSHIP SYSTEM',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: SplashScreen(),
    );
  }
}
