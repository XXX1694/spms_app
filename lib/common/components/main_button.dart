import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spms_app/common/colors/main_colors.dart';

class MainButton extends StatelessWidget {
  const MainButton({Key? key, required this.txt, required this.pass})
      : super(key: key);

  final String txt;
  final String pass;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        padding: const EdgeInsets.all(0),
        child: Container(
          child: Center(
            child: Text(
              txt,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          width: double.infinity,
          height: 55,
          decoration: BoxDecoration(
            color: PSMSmain,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, pass);
        });
  }
}
