import 'package:flutter/material.dart';

import '../../../common/colors/main_colors.dart';

class SecondText extends StatelessWidget {
  const SecondText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(0),
      child: Text(
        'serikbay.a04@gmail.com',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: PSMSblack40,
        ),
      ),
    );
  }
}
