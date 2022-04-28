import 'package:flutter/material.dart';
import 'package:spms_app/common/colors/main_colors.dart';

class DecorationLine extends StatelessWidget {
  const DecorationLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2,
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(0),
      color: PSMSblack20,
    );
  }
}
