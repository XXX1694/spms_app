import 'package:flutter/material.dart';
import 'package:spms_app/common/colors/main_colors.dart';

class DoctorsList extends StatelessWidget {
  const DoctorsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: 350,
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(0),
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        itemCount: 10,
        itemBuilder: ((context, index) {
          return Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
              padding: const EdgeInsets.all(0),
              height: 90,
              decoration: BoxDecoration(
                border: Border.all(
                  color: PSMSblack20,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 15),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.all(0),
                      padding: const EdgeInsets.all(0),
                      height: 55,
                      width: 55,
                      child: const CircleAvatar(
                        backgroundColor: Color(0xFFE5E5E5),
                      ),
                    ),
                  ),
                  const SizedBox()
                ],
              ));
        }),
      ),
    );
  }
}
