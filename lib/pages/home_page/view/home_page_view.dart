import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spms_app/common/components/menu.dart';
import 'package:spms_app/pages/home_page/components/list_item.dart';

import '../../../common/colors/main_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BackButton(color: mainColor), // go Back button
              ],
            ),
          ),
          const SizedBox(height: 0),
          Center(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(0),
                  padding: const EdgeInsets.all(0),
                  height: 120,
                  width: 120,
                  child: Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(0),
                        padding: const EdgeInsets.all(0),
                        height: 120,
                        width: 120,
                        child: const CircleAvatar(
                          backgroundColor: Color(0xFFE5E5E5),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(0),
                        padding: const EdgeInsets.all(0),
                        alignment: Alignment.bottomRight,
                        child: CupertinoButton(
                          padding: const EdgeInsets.all(0),
                          child: Image.asset(
                            'assets/icon/icon1.png',
                            height: 40,
                            width: 40,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Serikbay Abzal',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'serikbay.a04@gmail.com',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black38,
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  height: 2,
                  width: 350,
                  color: Colors.black12,
                ),
                const SizedBox(height: 20),
                const MenuElement(
                    img: 'assets/icon/icon2.png', txt: 'My Profile'),
                const SizedBox(height: 20),
                const MenuElement(
                    img: 'assets/icon/icon3.png', txt: 'My Address'),
                const SizedBox(height: 20),
                const MenuElement(
                    img: 'assets/icon/icon4.png', txt: 'Notification'),
                const SizedBox(height: 20),
                const MenuElement(
                    img: 'assets/icon/icon5.png', txt: 'Help Center'),
                const SizedBox(height: 20),
                const MenuElement(img: 'assets/icon/icon6.png', txt: 'Log Out'),
                const SizedBox(height: 40),
                const Text(
                  'ver 1.01',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black38,
                  ),
                ),
                const SizedBox(height: 15),
                const BottomMenu(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
