import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Avatar extends StatelessWidget {
  const Avatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(0),
      height: 120,
      width: 120,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(0),
            padding: const EdgeInsets.all(0),
            height: 120,
            width: 120,
            child: const CircleAvatar(
              backgroundColor: Color(0xFFE5E5E5),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(0),
            padding: const EdgeInsets.all(0),
            alignment: Alignment.bottomRight,
            child: CupertinoButton(
              padding: const EdgeInsets.all(0),
              child: Image.asset(
                'assets/icon/icon1.png',
                height: 40,
                width: 40,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
