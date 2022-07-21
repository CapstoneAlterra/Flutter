import 'package:flutter/material.dart';
import 'package:flutter_gym_management_system/screen/login_register/login_register.dart';
// import 'package:login_register/screen/login_register.dart';
// import 'package:login_register/splash_screen.dart';
import 'package:flutter_gym_management_system/screen/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'screen/homepage/homepage_screen.dart';
import 'screen/login_register/login/login_screen..dart';
import 'screen/login_register/register/register_screen.dart';
import 'viewmodel/login_viewmodel.dart';
import 'viewmodel/register_viewmodel.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  final showLogin = prefs.getBool('showLogin') ?? false;
  final isLogin = prefs.getBool('isLogin') ?? false;
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => LoginViewModel()),
      ChangeNotifierProvider(create: (_) => RegisterViewModel()),
    ],
    child: MyApp(
      showLogin: showLogin,
      isLogin: isLogin,
    ),
  ));
}

class MyApp extends StatelessWidget {
  final bool showLogin;
  final bool isLogin;
  const MyApp({Key? key, required this.showLogin, required this.isLogin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gym Membership System',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      // initialRoute: (showLogin && isLogin)
      //     ? '/home'
      //     : (showLogin)
      //         ? '/loginregister'
      //         : '/splash',
      routes: {
        '/splash': (context) => SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/home': (context) => HomePageScreen(),
      },
    );
  }
}
