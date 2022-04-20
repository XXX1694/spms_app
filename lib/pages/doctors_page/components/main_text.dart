import 'package:flutter/material.dart';
import 'package:spms_app/common/colors/main_colors.dart';

class MainText extends StatelessWidget {
  const MainText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(0),
      child: Text(
        'Doctors',
        style: TextStyle(
          color: PSMSblack,
          fontWeight: FontWeight.w700,
          fontSize: 22,
        ),
      ),
    );
  }
}
