import 'package:flutter/cupertino.dart';

class Stars extends StatelessWidget {
  const Stars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            CupertinoButton(
              padding: const EdgeInsets.all(0),
              child: Image.asset(
                'assets/stars/starall_active.png',
                height: 30,
                width: 50,
              ),
              onPressed: () {},
            ),
            const SizedBox(width: 10),
            CupertinoButton(
              padding: const EdgeInsets.all(0),
              child: Image.asset(
                'assets/stars/star1_disable.png',
                height: 30,
                width: 50,
              ),
              onPressed: () {},
            ),
            const SizedBox(width: 10),
            CupertinoButton(
              padding: const EdgeInsets.all(0),
              child: Image.asset(
                'assets/stars/star2_disable.png',
                height: 30,
                width: 50,
              ),
              onPressed: () {},
            ),
            const SizedBox(width: 10),
            CupertinoButton(
              padding: const EdgeInsets.all(0),
              child: Image.asset(
                'assets/stars/star3_disable.png',
                height: 30,
                width: 50,
              ),
              onPressed: () {},
            ),
            const SizedBox(width: 10),
            CupertinoButton(
              padding: const EdgeInsets.all(0),
              child: Image.asset(
                'assets/stars/star4_disable.png',
                height: 30,
                width: 50,
              ),
              onPressed: () {},
            ),
            const SizedBox(width: 10),
            CupertinoButton(
              padding: const EdgeInsets.all(0),
              child: Image.asset(
                'assets/stars/star5_disable.png',
                height: 30,
                width: 50,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
