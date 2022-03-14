import 'package:flutter/material.dart';
import 'package:spms_app/common/components/main_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConstrainedBox(
        constraints: const BoxConstraints.tightFor(
          width: double.infinity,
          height: double.infinity,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 170,
                width: double.infinity,
              ),
              Center(
                child: Image.asset(
                  'assets/img/main.png',
                  height: 280,
                  width: 230,
                ),
              ),
              const SizedBox(
                height: 80,
                width: double.infinity,
              ),
              const Text(
                'Welcome to',
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w700,
                  fontSize: 36,
                ),
              ),
              const Text(
                'PSMS',
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w700,
                  fontSize: 36,
                ),
              ),
              const SizedBox(
                height: 30,
                width: double.infinity,
              ),
              const Text(
                'Patient Smart Monitoring System',
                style: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              const MainButton(
                txt: "Get Started",
                pass: '/carousel',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
