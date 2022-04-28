import 'package:flutter/material.dart';
import 'package:spms_app/common/colors/main_colors.dart';

class LoginFiled extends StatelessWidget {
  const LoginFiled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: PSMSblack20,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: PSMSmain100,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          hintText: 'Email Adress',
          hintStyle: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
            color: PSMSblack20,
          ),
        ),
      ),
    );
  }
}
