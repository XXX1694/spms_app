import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spms_app/common/colors/main_colors.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: 390,
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(0),
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(width: 1.0, color: Colors.black26),
        ),
        color: Colors.white,
      ),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CupertinoButton(
                  padding: const EdgeInsets.all(0),
                  child: Container(
                    margin: const EdgeInsets.all(0),
                    padding: const EdgeInsets.all(0),
                    child: Center(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/menu/doctor_disable.png',
                            height: 20,
                            width: 20,
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Doctor',
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  onPressed: () {}),
              CupertinoButton(
                  padding: const EdgeInsets.all(0),
                  child: Container(
                    margin: const EdgeInsets.all(0),
                    padding: const EdgeInsets.all(0),
                    child: Center(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/menu/health_disable.png',
                            height: 20,
                            width: 20,
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Health',
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  onPressed: () {}),
              CupertinoButton(
                  padding: const EdgeInsets.all(0),
                  child: Container(
                    margin: const EdgeInsets.all(0),
                    padding: const EdgeInsets.all(0),
                    child: Center(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/menu/chat_disable.png',
                            height: 20,
                            width: 20,
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Chat',
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  onPressed: () {}),
              CupertinoButton(
                  padding: const EdgeInsets.all(0),
                  child: Container(
                    margin: const EdgeInsets.all(0),
                    padding: const EdgeInsets.all(0),
                    child: Center(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/menu/profile_active.png',
                            height: 20,
                            width: 20,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Profile',
                            style: TextStyle(
                              color: mainColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  onPressed: () {})
            ],
          ),
        ],
      ),
    );
  }
}
