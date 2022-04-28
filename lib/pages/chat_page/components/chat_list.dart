import 'package:flutter/material.dart';
import 'package:spms_app/common/colors/main_colors.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: 350,
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(0),
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        itemCount: 10,
        itemBuilder: ((context, index) {
          return Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
              padding: const EdgeInsets.all(0),
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(
                  color: PSMSblack20,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    Container(
                      margin: const EdgeInsets.all(0),
                      padding: const EdgeInsets.all(0),
                      height: 60,
                      width: 60,
                      child: const CircleAvatar(
                        backgroundColor: Color(0xFFE5E5E5),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Abzal Serikbay',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'How are you my friend?',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: PSMSblack40,
                          ),
                        ),
                      ],
                    ),
                    const Expanded(child: SizedBox()),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(0),
                          padding: const EdgeInsets.all(0),
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: PSMSmain100,
                          ),
                          child: const Center(
                            child: Text(
                              '1',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          '10.04',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: PSMSblack60,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(width: 15),
                  ],
                ),
              ));
        }),
      ),
    );
  }
}
