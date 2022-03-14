import 'package:flutter/material.dart';

class MainText extends StatelessWidget {
  const MainText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Real-Time Monitoring',
      style: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
