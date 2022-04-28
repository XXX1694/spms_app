import 'package:flutter/material.dart';
import 'package:spms_app/pages/address_list_page/components/current_location.dart';
import 'package:spms_app/pages/address_list_page/components/decoration_line.dart';
import 'package:spms_app/pages/address_list_page/components/main_text.dart';
import 'package:spms_app/pages/address_list_page/components/map_button.dart';
import 'package:spms_app/pages/address_list_page/components/second_text.dart';

import '../../../common/colors/main_colors.dart';

class AddressListPage extends StatelessWidget {
  const AddressListPage({Key? key}) : super(key: key);

  get children => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BackButton(color: PSMSmain100) // go Back button
              ],
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    MainText(), // Main Text
                    Expanded(child: SizedBox(height: 0)),
                    MapButton(
                      pass: '/map',
                    ), // map
                  ],
                ),
                const SizedBox(height: 15),
                const SecondText(), // Second text
                const SizedBox(height: 25),
                const DecorationLine(), // Decoration Line
                const SizedBox(height: 20),
                const CurrentLocation(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
