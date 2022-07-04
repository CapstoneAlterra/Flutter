// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'dart:convert';
// import 'dart:async';

// void login() async {
//   final url = 'https://gym.stack.co.id/member';
//   await http.post(url, body: {
//     'username': userData.email,
//     'password': base64Encode(userData.password.codeUnits)
//   }).then((response) {
//     Map<String, dynamic> data = json.decode(response.body);
//     if (response.statusCode == 200) {
//       userData.addData(responseMap);
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => UserPage(userData),
//         ),
//       );
//     } else {
//       if (responseMap.containsKey('message'))
//         showDialog(
//             context: context,
//             builder: (BuildContext context) => getAlertDialog(
//                 'Login Failed', '${responseMap['message']}', context));
//     }
//   }).catchError((err) {
//     showDialog(
//         context: context,
//         builder: (BuildContext context) =>
//             getAlertDialog('Login Failed', '${err.toString()}', context));
//   });
// }
