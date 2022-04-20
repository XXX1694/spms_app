import 'package:flutter/material.dart';
import 'package:spms_app/common/components/menu.dart';
import 'package:spms_app/pages/home_page/components/avatar.dart';
import 'package:spms_app/pages/home_page/components/bottom_text.dart';
import 'package:spms_app/pages/home_page/components/decor_line.dart';
import 'package:spms_app/pages/home_page/components/list_item.dart';
import 'package:spms_app/pages/home_page/components/main_text.dart';
import 'package:spms_app/pages/home_page/components/second_text.dart';

import '../../../common/colors/main_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Align(
            child: BottomMenu(active: 'profile'),
            alignment: Alignment.bottomCenter,
          ),
          Column(
            children: [
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    BackButton(color: PSMSmain), // go Back button
                  ],
                ),
              ),
              const SizedBox(height: 0),
              Center(
                child: Column(
                  children: const [
                    Avatar(),
                    SizedBox(height: 20),
                    MainText(), // Main Text
                    SizedBox(height: 10),
                    SecondText(), // Second Text
                    SizedBox(height: 30),
                    DecorLine(), // Decorative Line
                    SizedBox(height: 20),
                    MenuElement(
                        img: 'assets/icon/icon2.png', txt: 'My Profile'),
                    SizedBox(height: 20),
                    MenuElement(
                        img: 'assets/icon/icon3.png', txt: 'My Address'),
                    SizedBox(height: 20),
                    MenuElement(
                        img: 'assets/icon/icon4.png', txt: 'Notification'),
                    SizedBox(height: 20),
                    MenuElement(
                        img: 'assets/icon/icon5.png', txt: 'Help Center'),
                    SizedBox(height: 20),
                    MenuElement(img: 'assets/icon/icon6.png', txt: 'Log Out'),
                    SizedBox(height: 40),
                    BottomText(), // Bottom Text
                    SizedBox(height: 15),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
