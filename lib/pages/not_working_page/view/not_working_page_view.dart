import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../../../common/colors/main_colors.dart';

class NotWorkingPage extends StatefulWidget {
  const NotWorkingPage({Key? key}) : super(key: key);

  @override
  State<NotWorkingPage> createState() => _NotWorkingPageState();
}

class _NotWorkingPageState extends State<NotWorkingPage> {
  AudioCache audioCache = AudioCache();

  @override
  void initState() {
    audioCache.load('sfx/1.mp3');
    audioCache.play('sfx/1.mp3');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  BackButton(color: mainColor) // go Back button
                ],
              ),
            ),
            const SizedBox(height: 120), //name
            const Text(
              'Sorry,',
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Text(
              'not working!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 60),
            Image.asset(
              'assets/img/nowork.png',
              height: 300,
              width: 300,
            )
          ],
        ),
      ),
    );
  }
}
