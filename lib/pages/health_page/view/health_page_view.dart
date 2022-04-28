import 'package:flutter/material.dart';
import 'package:spms_app/pages/health_page/components/heart_rate_display.dart';
import 'package:spms_app/pages/health_page/components/preasure_display.dart';
import 'package:spms_app/pages/health_page/components/saturation_display.dart';
import 'package:spms_app/pages/health_page/components/temperature_display.dart';

import '../../../common/colors/main_colors.dart';
import '../../../common/components/menu.dart';
import '../../health_page/components/function_button.dart';
import '../../health_page/components/main_text.dart';

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
            const SizedBox(height: 50),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [BackButton(color: PSMSmain100)], // Back Button
                  ),
                ),
                const MainText(), // Main Text
                Expanded(child: Container()),
                const FunctionButton(), //Function Button
                const SizedBox(width: 20),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  const TemperatureDisplay(), // Temperature Display
                  const SizedBox(height: 20),
                  const PreasureDisplay(), // Blood presure Display
                  const SizedBox(height: 20),
                  Row(
                    children: const [
                      HeartRateDisplay(), // Heart Rate Display
                      SizedBox(width: 20),
                      SaturationDisplay(), // Saturation Display
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
