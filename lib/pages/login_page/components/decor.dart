import 'package:flutter/material.dart';

class Decor extends StatelessWidget {
  const Decor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/img/decor.png',
      height: 20,
    );
  }
}
