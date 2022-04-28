import 'package:flutter/material.dart';
import 'package:spms_app/common/colors/main_colors.dart';
import 'package:spms_app/common/components/main_button.dart';
import 'package:spms_app/pages/map_page/components/search.dart';

void showBottom(context) {
  showModalBottomSheet(
    barrierColor: Colors.white.withOpacity(0.0),
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
    context: context,
    builder: (context) {
      return Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
          color: Colors.white,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        margin: const EdgeInsets.all(0),
        height: 315,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 30),
          Text(
            'Zhamakaeva street 145',
            style: TextStyle(
              color: PSMSblack,
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Norristown, Pennsylvania, 19403',
            style: TextStyle(
              color: PSMSblack40,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 55),
          const SearchFiled(), // Search Filed
          const SizedBox(height: 20),
          const MainButton(txt: 'Add Adress', pass: '/home')
        ]),
      );
    },
  );
}
