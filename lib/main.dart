import 'package:flutter/material.dart';
import 'package:spms_app/pages/carousel_page/view/carousel_page_view.dart';
import 'package:spms_app/pages/home_page/view/home_page_view.dart';
import 'package:spms_app/pages/login_page/view/login_page_view.dart';
import 'package:spms_app/pages/not_working_page/view/not_working_page_view.dart';
import 'package:spms_app/pages/registration_page/view/registration_page_view.dart';
import 'pages/welcome_page/view/welcome_page_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const WelcomePage(),
          '/carousel': (context) => const CarouselPage(),
          '/login': (context) => const LoginPage(),
          '/registration': (context) => const RegistrationPage(),
          '/networking': (context) => const NotWorkingPage(),
          '/home': (context) => const HomePage(),
        }
        //theme: ThemeData(fontFamily: 'Montserrat'),
        );
  }
}
