import 'package:flutter/material.dart';
import 'package:spms_app/common/colors/main_colors.dart';

class SearchFiled extends StatelessWidget {
  const SearchFiled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
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
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          hintText: 'write down building, apartment or office...',
          hintStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: PSMSblack20,
          ),
        ),
      ),
    );
  }
}

class PSMSmain {}
