import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:spms_app/pages/address_list_page/view/address_list_page_view.dart';
import 'package:spms_app/pages/carousel_page/view/carousel_page_view.dart';
import 'package:spms_app/pages/chat_page/view/chat_page_view.dart';
import 'package:spms_app/pages/home_page/view/home_page_view.dart';
import 'package:spms_app/pages/profile_page/view/profile_page_view.dart';
import 'package:spms_app/pages/login_page/view/login_page_view.dart';
import 'package:spms_app/pages/not_working_page/view/not_working_page_view.dart';
import 'package:spms_app/pages/registration_page/view/registration_page_view.dart';
import 'pages/doctors_page/view/doctors_page_view.dart';
import 'pages/health_page/view/health_page_view.dart';
import 'pages/map_page/view/map_page_view.dart';
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
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/profile':
            return PageTransition(
                child: const ProfilePage(), type: PageTransitionType.scale);
          case '/chat':
            return PageTransition(
                child: const ChatPage(), type: PageTransitionType.scale);
          case '/health':
            return PageTransition(
                child: const HealthPage(), type: PageTransitionType.scale);
          case '/doctors':
            return PageTransition(
                child: const DoctorsPage(), type: PageTransitionType.scale);
          case '/login':
            return PageTransition(
                child: const LoginPage(), type: PageTransitionType.scale);
          case '/addresslist':
            return PageTransition(
                child: const AddressListPage(), type: PageTransitionType.scale);
          case '/map':
            return PageTransition(
                child: const MapPage(), type: PageTransitionType.scale);
          case '/home':
            return PageTransition(
                child: const HomePage(), type: PageTransitionType.scale);
          case '/registration':
            return PageTransition(
                child: const RegistrationPage(),
                type: PageTransitionType.scale);
          default:
            return null;
        }
      },
      routes: {
        '/': (context) => const WelcomePage(),
        '/carousel': (context) => const CarouselPage(),
        '/login': (context) => const LoginPage(),
        '/registration': (context) => const RegistrationPage(),
        '/networking': (context) => const NotWorkingPage(),
        '/profile': (context) => const ProfilePage(),
        '/chat': (context) => const ChatPage(),
        '/health': (context) => const HealthPage(),
        '/doctors': (context) => const DoctorsPage(),
        '/addresslist': (context) => const AddressListPage(),
        '/map': (context) => const MapPage(),
        '/home': (context) => const HomePage(),
      },

      //theme: ThemeData(fontFamily: 'Montserrat'),
    );
  }
}
