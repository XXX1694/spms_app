import 'package:flutter/material.dart';
import 'package:spms_app/common/colors/main_colors.dart';
import 'package:spms_app/common/components/reg_button.dart';
import 'package:spms_app/pages/login_page/components/bottom_text.dart';
import 'package:spms_app/pages/login_page/components/decor.dart';
import 'package:spms_app/pages/login_page/components/login_block.dart';
import 'package:spms_app/pages/login_page/components/main_text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
                BackButton(color: PSMSmain100) // go Back button
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                MainText(), // Main text 'Log In to Continue!'
                SizedBox(height: 40),
                RegButton(
                    txt: 'Login with Facebook',
                    pass: '/networking'), // Facebook login
                SizedBox(height: 15),
                RegButton(
                    txt: 'Login with Google',
                    pass: '/networking'), // Google login
                SizedBox(height: 40),
                Decor(), // Decoration line
                SizedBox(height: 20),
                LoginBlock(),
                SizedBox(height: 100),
                BottomText(), // Bottom text
              ],
            ),
          )
        ],
      ),
    );
  }
}
