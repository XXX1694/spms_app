import 'package:flutter/material.dart';
import 'package:spms_app/common/colors/main_colors.dart';

class SecondText extends StatelessWidget {
  const SecondText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(0),
      child: Text(
        'Patient Smart Monitoring System',
        style: TextStyle(
          color: PSMSblack40,
          fontWeight: FontWeight.w600,
          fontSize: 14,
        ),
      ),
    );
  }
}
