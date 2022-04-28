import 'package:flutter/material.dart';
import 'package:spms_app/common/colors/main_colors.dart';
import 'package:spms_app/pages/map_page/components/bottom_sheet.dart';

import '../../map_page/components/main_text.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState

    Future.delayed(const Duration(seconds: 0)).then((_) {
      showBottom(context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(0),
            margin: const EdgeInsets.all(0),
            color: PSMSblack20,
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(0),
                margin: const EdgeInsets.all(0),
                height: 95,
                color: Colors.white,
                child: Column(
                  children: [
                    const SizedBox(height: 45),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              BackButton(color: PSMSmain100)
                            ], // Back Button
                          ),
                        ),
                        const SizedBox(width: 35),
                        const MainText(), // Main Text
                      ],
                    ),
                  ],
                ),
              ),
              const Expanded(child: SizedBox()),
            ],
          ),
        ],
      ),
    );
  }
}
