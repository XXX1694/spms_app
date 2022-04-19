import 'package:flutter/material.dart';
import 'package:spms_app/common/components/main_button.dart';
import 'package:spms_app/pages/welcome_page/components/main_image.dart';
import 'package:spms_app/pages/welcome_page/components/second_text.dart';
import 'package:spms_app/pages/welcome_page/components/main_text.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(0),
        padding: const EdgeInsets.all(0),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(height: 170),
              MainImage(), // Main Image
              SizedBox(height: 80),
              MainText(), // Main text
              SizedBox(height: 30),
              SecondText(), // Second text
              SizedBox(height: 60),
              MainButton(txt: "Get Started", pass: '/carousel'),
            ],
          ),
        ),
      ),
    );
  }
}
