import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spms_app/common/colors/main_colors.dart';

class MenuElement extends StatelessWidget {
  const MenuElement(
      {Key? key, required this.img, required this.txt, required this.page})
      : super(key: key);

  final String img;
  final String txt;
  final int page;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        padding: const EdgeInsets.all(0),
        child: Container(
          height: 55,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              const SizedBox(width: 8),
              Image.asset(
                img,
                height: 40,
                width: 40,
              ),
              const SizedBox(width: 20),
              Text(
                txt,
                style: TextStyle(
                  color: PSMSblack,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Expanded(child: SizedBox()),
              RotatedBox(
                quarterTurns: 2,
                child: BackButton(
                  color: PSMSblack60,
                  onPressed: (() {}),
                ),
              ),
              const SizedBox(width: 20),
            ],
          ),
        ),
        onPressed: () {
          if (page == 1) {}
          if (page == 2) {}
          if (page == 3) {}
          if (page == 4) {}
          if (page == 5) {
            Navigator.pushNamed(context, '/login');
          }
        });
  }
}
