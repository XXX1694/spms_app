import 'package:flutter/cupertino.dart';

class FunctionButton extends StatelessWidget {
  const FunctionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(0),
      child: CupertinoButton(
        padding: const EdgeInsets.all(0),
        onPressed: () {},
        child: Image.asset(
          'assets/icon/icon_sort.png',
          height: 40,
          width: 40,
        ),
      ),
    );
  }
}
