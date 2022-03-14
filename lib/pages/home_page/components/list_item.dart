import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuElement extends StatelessWidget {
  const MenuElement({Key? key, required this.img, required this.txt})
      : super(key: key);

  final String img;
  final String txt;

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
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Expanded(child: SizedBox()),
              RotatedBox(
                quarterTurns: 2,
                child: BackButton(
                  color: Colors.black,
                  onPressed: (() {}),
                ),
              ),
              const SizedBox(width: 20),
            ],
          ),
        ),
        onPressed: () {});
  }
}
