import 'package:flutter/material.dart';

import '../../../common/colors/main_colors.dart';
import '../../../common/components/menu.dart';

class DoctorsPage extends StatelessWidget {
  const DoctorsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Align(
            child: BottomMenu(active: 'doctors'),
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
