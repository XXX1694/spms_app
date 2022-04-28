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
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 17),
              padding: const EdgeInsets.all(0),
              height: 100,
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
                      height: 65,
                      width: 65,
                      child: const CircleAvatar(
                        backgroundColor: Color(0xFFE5E5E5),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 18),
                      Text(
                        'Serikbay Abzal',
                        style: TextStyle(
                          color: PSMSblack80,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        'Pediatrician, Cardiologist',
                        style: TextStyle(
                          color: PSMSblack40,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            'Work experience: ',
                            style: TextStyle(
                              color: PSMSblack60,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '10 year',
                            style: TextStyle(
                              color: PSMSmain100,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const Expanded(child: SizedBox()),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 30,
                        width: 40,
                        margin: const EdgeInsets.all(0),
                        padding: const EdgeInsets.all(0),
                        decoration: BoxDecoration(
                          color: PSMSmain100,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 8),
                            Image.asset(
                              'assets/img/star.png',
                              height: 12,
                              width: 12,
                            ),
                            const SizedBox(width: 4),
                            const Text(
                              '5',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 25),
                ],
              ));
        }),
      ),
    );
  }
}
