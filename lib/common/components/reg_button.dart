import 'package:flutter/cupertino.dart';
import 'package:spms_app/common/colors/main_colors.dart';

class RegButton extends StatelessWidget {
  const RegButton({Key? key, required this.txt, required this.pass})
      : super(key: key);

  final String txt;
  final String pass;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        padding: const EdgeInsets.all(0),
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 15,
              ),
              Text(
                txt,
                style: TextStyle(
                  color: PSMSmain,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: PSMSmain20,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, pass);
        });
  }
}
