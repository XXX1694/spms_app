import 'package:flutter/material.dart';

import '../../../common/colors/main_colors.dart';
import '../../../common/components/menu.dart';

class HealthPage extends StatelessWidget {
  const HealthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Align(
            child: BottomMenu(active: 'health'),
            alignment: Alignment.bottomCenter,
          ),
          Column(children: [
            const SizedBox(height: 40),
            Row(
              children: [
                BackButton(
                  color: PSMSmain,
                ),
              ],
            )
          ]),
        ],
      ),
    );
  }
}
