import 'package:flutter/material.dart';

import '../../../common/colors/main_colors.dart';

class SaturationDisplay extends StatelessWidget {
  const SaturationDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 165,
      decoration: BoxDecoration(
          color: PSMSblack5, borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: Container(
          height: 124,
          width: 139,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              const SizedBox(height: 15),
              Text(
                'Saturation',
                style: TextStyle(
                  color: PSMSblack,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '99',
                    style: TextStyle(
                      color: PSMSmain100,
                      fontSize: 36,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '%',
                    style: TextStyle(
                      color: PSMSmain100,
                      fontSize: 36,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              )
            ],
          ),
          margin: const EdgeInsets.all(0),
          padding: const EdgeInsets.all(0),
        ),
      ),
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(0),
    );
  }
}
