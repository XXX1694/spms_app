import 'package:flutter/material.dart';
import 'package:spms_app/common/components/menu.dart';
import 'package:spms_app/pages/profile_page/components/avatar.dart';
import 'package:spms_app/pages/profile_page/components/bottom_text.dart';
import 'package:spms_app/pages/profile_page/components/decor_line.dart';
import 'package:spms_app/pages/profile_page/components/list_item.dart';
import 'package:spms_app/pages/profile_page/components/main_text.dart';
import 'package:spms_app/pages/profile_page/components/second_text.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

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
              const SizedBox(height: 90),
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
                      img: 'assets/icon/icon2.png',
                      txt: 'My Profile',
                      page: 1,
                    ),
                    SizedBox(height: 20),
                    MenuElement(
                      img: 'assets/icon/icon3.png',
                      txt: 'My Address',
                      page: 2,
                    ),
                    SizedBox(height: 20),
                    MenuElement(
                      img: 'assets/icon/icon4.png',
                      txt: 'Notification',
                      page: 3,
                    ),
                    SizedBox(height: 20),
                    MenuElement(
                      img: 'assets/icon/icon5.png',
                      txt: 'Help Center',
                      page: 4,
                    ),
                    SizedBox(height: 20),
                    MenuElement(
                      img: 'assets/icon/icon6.png',
                      txt: 'Log Out',
                      page: 5,
                    ),
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
