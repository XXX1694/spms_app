import 'package:flutter/material.dart';

class MainImage extends StatelessWidget {
  const MainImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(0),
      child: Center(
        child: Image.asset(
          'assets/img/main.png',
          height: 280,
          width: 230,
        ),
      ),
    );
  }
}
