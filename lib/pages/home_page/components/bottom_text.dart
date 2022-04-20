import 'package:flutter/material.dart';
import 'package:spms_app/common/colors/main_colors.dart';

class BottomText extends StatelessWidget {
  const BottomText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(0),
      child: Text(
        'ver 1.01',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: PSMSblack40,
        ),
      ),
    );
  }
}
