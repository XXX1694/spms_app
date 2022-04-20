import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:spms_app/pages/not_working_page/components/main_image.dart';
import 'package:spms_app/pages/not_working_page/components/main_text.dart';
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
    super.initState();
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
                children: [BackButton(color: PSMSmain)], // go Back button
              ),
            ),
            const SizedBox(height: 120),
            const MainText(), // Main Text
            const SizedBox(height: 60),
            const MainImage(), // Main Image
          ],
        ),
      ),
    );
  }
}
