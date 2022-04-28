import 'package:flutter/material.dart';
import 'package:spms_app/common/colors/main_colors.dart';
import 'package:spms_app/common/components/main_button.dart';
import 'package:spms_app/common/components/reg_button.dart';
import 'package:spms_app/pages/registration_page/components/bottom_text.dart';
import 'package:spms_app/pages/registration_page/components/decor.dart';
import 'package:spms_app/pages/registration_page/components/login_filed.dart';
import 'package:spms_app/pages/registration_page/components/main_text.dart';
import 'package:spms_app/pages/registration_page/components/name_filed.dart';
import 'package:spms_app/pages/registration_page/components/phone_filed.dart';
import '../components/password_filed.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

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
              children: [BackButton(color: PSMSmain100)], // go Back button
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                MainText(), // Main text 'Sign Up to Continue!'
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
                NameFiled(), // Name Filed
                SizedBox(height: 20),
                PhoneFiled(), // Phone Number Filed
                SizedBox(height: 20),
                LoginFiled(), // Login Filed
                SizedBox(height: 20),
                PasswordFiled(), // Password Filed
                SizedBox(height: 25),
                MainButton(
                    txt: 'Sign Up', pass: '/addresslist'), // Register Button
                SizedBox(height: 20),
                BottomText(), // Bottom Text
              ],
            ),
          )
        ],
      ),
    );
  }
}
