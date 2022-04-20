import 'package:flutter/material.dart';
import 'package:spms_app/pages/doctors_page/components/doctors_list.dart';
import 'package:spms_app/pages/doctors_page/components/stars.dart';

import '../../../common/colors/main_colors.dart';
import '../../../common/components/menu.dart';
import '../../doctors_page/components/main_text.dart';
import '../components/function_button.dart';

class DoctorsPage extends StatelessWidget {
  const DoctorsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              const SizedBox(height: 50),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [BackButton(color: PSMSmain)], // Back Button
                    ),
                  ),
                  const MainText(), // Main Text
                  Expanded(child: Container()),
                  const FunctionButton(), //Function Button
                  const SizedBox(width: 10),
                ],
              ),
              const SizedBox(height: 25),
              const Stars(),
              const SizedBox(height: 25),
              const DoctorsList(),
            ],
          ),
          const Align(
            child: BottomMenu(active: 'doctors'), // Menu
            alignment: Alignment.bottomCenter,
          )
        ],
      ),
    );
  }
}
