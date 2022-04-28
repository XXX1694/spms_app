import 'package:flutter/material.dart';

import '../../../common/colors/main_colors.dart';

class TemperatureDisplay extends StatelessWidget {
  const TemperatureDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 350,
      decoration: BoxDecoration(
          color: PSMSblack5, borderRadius: BorderRadius.circular(20)),
      child: const SizedBox(),
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(0),
    );
  }
}
