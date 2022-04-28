import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:spms_app/common/colors/main_colors.dart';
import 'package:spms_app/common/components/main_button.dart';
import 'package:spms_app/pages/carousel_page/components/main_text.dart';
import 'package:spms_app/pages/carousel_page/components/second_text.dart';

class CarouselPage extends StatefulWidget {
  const CarouselPage({Key? key}) : super(key: key);

  @override
  State<CarouselPage> createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  final urlImages = [
    'assets/img/noimg.png',
    'assets/img/noimg.png',
    'assets/img/noimg.png',
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CarouselSlider.builder(
            itemCount: urlImages.length,
            options: CarouselOptions(
                height: 510,
                onPageChanged: (index, reason) {
                  setState(() => activeIndex = index);
                }),
            itemBuilder: (context, index, realIndex) {
              final urlImage = urlImages[index];
              return buildImage(urlImage, index);
            },
          ),
          Center(
            child: Column(
              children: [
                const SizedBox(height: 550),
                const MainText(), // Main text
                const SizedBox(height: 20),
                const SecondText(), // Second text
                const SizedBox(height: 35),
                buildIndicator(),
                const SizedBox(height: 40),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: MainButton(txt: 'Get Started', pass: '/home'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
        margin: const EdgeInsets.all(0),
        padding: const EdgeInsets.all(0),
        child: Image.asset(
          urlImage,
          fit: BoxFit.cover,
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: urlImages.length,
        effect: ExpandingDotsEffect(
          expansionFactor: 5,
          spacing: 9,
          dotHeight: 8,
          dotWidth: 8,
          dotColor: Colors.black12,
          activeDotColor: PSMSmain100,
        ),
      );
}
