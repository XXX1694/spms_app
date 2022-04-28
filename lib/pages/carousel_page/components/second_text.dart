import 'package:flutter/material.dart';
import 'package:spms_app/common/colors/main_colors.dart';

class SecondText extends StatelessWidget {
  const SecondText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(0),
      child: Column(
        children: [
          Text(
            'System will mointor you',
            style: TextStyle(
              color: PSMSblack60,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'health in real-time',
            style: TextStyle(
              color: PSMSblack60,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
