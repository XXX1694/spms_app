import 'package:flutter/material.dart';
import 'package:spms_app/common/colors/main_colors.dart';

class MainText extends StatelessWidget {
  const MainText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      margin: const EdgeInsets.all(0),
      child: Text(
        'Choose Your Address',
        style: TextStyle(
          color: PSMSblack,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
