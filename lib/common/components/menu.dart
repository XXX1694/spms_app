import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spms_app/common/colors/main_colors.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({Key? key, required this.active}) : super(key: key);

  final String active;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
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
                          Container(
                            margin: const EdgeInsets.all(0),
                            padding: const EdgeInsets.all(0),
                            child: (active == 'doctors')
                                ? Image.asset(
                                    'assets/menu/doctor_active.png',
                                    height: 20,
                                    width: 20,
                                  )
                                : Image.asset(
                                    'assets/menu/doctor_disable.png',
                                    height: 20,
                                    width: 20,
                                  ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Doctor',
                            style: (active == 'doctors')
                                ? TextStyle(
                                    color: PSMSmain,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  )
                                : const TextStyle(
                                    color: Colors.black38,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                          )
                        ],
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/doctors');
                  }),
              CupertinoButton(
                  padding: const EdgeInsets.all(0),
                  child: Container(
                    margin: const EdgeInsets.all(0),
                    padding: const EdgeInsets.all(0),
                    child: Center(
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(0),
                            padding: const EdgeInsets.all(0),
                            child: (active == 'health')
                                ? Image.asset(
                                    'assets/menu/health_active.png',
                                    height: 20,
                                    width: 20,
                                  )
                                : Image.asset(
                                    'assets/menu/health_disable.png',
                                    height: 20,
                                    width: 20,
                                  ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Health',
                            style: (active == 'health')
                                ? TextStyle(
                                    color: PSMSmain,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  )
                                : const TextStyle(
                                    color: Colors.black38,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                          )
                        ],
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/health');
                  }),
              CupertinoButton(
                  padding: const EdgeInsets.all(0),
                  child: Container(
                    margin: const EdgeInsets.all(0),
                    padding: const EdgeInsets.all(0),
                    child: Center(
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(0),
                            padding: const EdgeInsets.all(0),
                            child: (active == 'chat')
                                ? Image.asset(
                                    'assets/menu/chat_active.png',
                                    height: 20,
                                    width: 20,
                                  )
                                : Image.asset(
                                    'assets/menu/chat_disable.png',
                                    height: 20,
                                    width: 20,
                                  ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Chat',
                            style: (active == 'chat')
                                ? TextStyle(
                                    color: PSMSmain,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  )
                                : const TextStyle(
                                    color: Colors.black38,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                          )
                        ],
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/chat');
                  }),
              CupertinoButton(
                  padding: const EdgeInsets.all(0),
                  child: Container(
                    margin: const EdgeInsets.all(0),
                    padding: const EdgeInsets.all(0),
                    child: Center(
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(0),
                            padding: const EdgeInsets.all(0),
                            child: (active == 'profile')
                                ? Image.asset(
                                    'assets/menu/profile_active.png',
                                    height: 20,
                                    width: 20,
                                  )
                                : Image.asset(
                                    'assets/menu/profile_disable.png',
                                    height: 20,
                                    width: 20,
                                  ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Profile',
                            style: (active == 'profile')
                                ? TextStyle(
                                    color: PSMSmain,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  )
                                : const TextStyle(
                                    color: Colors.black38,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                          )
                        ],
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  })
            ],
          ),
        ],
      ),
    );
  }
}
