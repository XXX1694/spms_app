import 'package:flutter/material.dart';

class MainText extends StatelessWidget {
  const MainText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Sign Up to Continue!',
      style: TextStyle(
        color: Colors.black,
        fontSize: 26,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
