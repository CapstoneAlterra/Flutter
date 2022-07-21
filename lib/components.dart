import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
// import 'package:login_register/constant.dart';

class LoadingToast extends StatelessWidget {
  const LoadingToast({Key? key, required this.message}) : super(key: key);
  final String? message;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // The loading indicator
            CircularProgressIndicator(
              backgroundColor: Color.fromARGB(255, 233, 5, 5),
              strokeWidth: 2.0,
            ),
            const SizedBox(
              height: 15,
            ),
            // Some text
            Text(message!)
          ],
        ),
      ),
    );
  }
}
