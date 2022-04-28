import 'package:flutter/material.dart';
import 'package:spms_app/common/colors/main_colors.dart';

class NameFiled extends StatelessWidget {
  const NameFiled({Key? key}) : super(key: key);

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
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black26,
            ),
            borderRadius: BorderRadius.all(
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
          hintText: 'Your name',
          hintStyle: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
            color: Colors.black26,
          ),
        ),
      ),
    );
  }
}
