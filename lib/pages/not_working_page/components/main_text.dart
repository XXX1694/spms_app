import 'package:flutter/material.dart';
import 'package:spms_app/common/colors/main_colors.dart';

class MainText extends StatelessWidget {
  const MainText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Sorry,',
            style: TextStyle(
              color: PSMSblack,
              fontSize: 32,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            'not working!',
            style: TextStyle(
              color: PSMSblack,
              fontSize: 32,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
