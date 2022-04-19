import 'package:flutter/material.dart';
import 'package:spms_app/pages/chat_page/components/chat_list.dart';
import 'package:spms_app/pages/chat_page/components/func_button.dart';
import 'package:spms_app/pages/chat_page/components/search.dart';
import 'package:spms_app/pages/chat_page/components/main_text.dart';

import '../../../common/colors/main_colors.dart';
import '../../../common/components/menu.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

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
                      children: [
                        BackButton(color: PSMSmain), // Back button
                      ],
                    ),
                  ),
                  const MainText(), // Main text
                  Expanded(child: Container()),
                  const FunctionButton(), //Function button
                  const SizedBox(width: 20),
                ],
              ),
              const SizedBox(height: 25),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SearchFiled(), // Secrch filed
              ),
              const SizedBox(height: 25),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Expanded(
                  child: ChatList(), // Chat list
                ),
              )
            ],
          ),
          const Align(
            child: BottomMenu(active: 'chat'), // Menu
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }
}
