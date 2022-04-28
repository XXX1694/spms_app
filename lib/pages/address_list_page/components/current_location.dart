import 'package:flutter/material.dart';
import 'package:spms_app/common/colors/main_colors.dart';

class CurrentLocation extends StatelessWidget {
  const CurrentLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/icon/address_icon.png',
              height: 40, width: 40), // Image icon
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Current Location',
                style: TextStyle(
                  color: PSMSblack,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 1),
              Text(
                'Zhamakaeva street 145',
                style: TextStyle(
                  color: PSMSblack40,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
