import 'package:flutter/material.dart';

import '../../../common/colors/main_colors.dart';

class DecorLine extends StatelessWidget {
  const DecorLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(0),
      height: 2,
      width: 350,
      color: PSMSblack20,
    );
  }
}
