import 'package:flutter/cupertino.dart';

class MapButton extends StatelessWidget {
  const MapButton({Key? key, required this.pass}) : super(key: key);
  final String pass;
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        padding: const EdgeInsets.all(0),
        child: Container(
          margin: const EdgeInsets.all(0),
          padding: const EdgeInsets.all(0),
          child: Image.asset(
            'assets/icon/map.png',
            height: 21,
            width: 24,
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, pass);
        });
  }
}
