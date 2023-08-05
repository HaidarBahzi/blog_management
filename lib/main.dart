import 'package:blog_management/page/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: SplashScreen());
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Container(
          width: 1000,
          height: 1000,
          child: Center(
              child: Image.asset(
            'assets/ic_logo.png',
            width: 1000,
            height: 1000,
            fit: BoxFit.cover,
          )),
        ),
        duration: 3000,
        nextScreen: Login());
  }
}
