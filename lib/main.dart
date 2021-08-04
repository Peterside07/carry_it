import 'package:flutter/material.dart';
import 'Ui/SplashSceen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: AnimatedSplashScreen(
      duration: 1000,
      nextScreen: SplashScreen(),
      splash: Image.asset(
        'assets/image.png',
        height: 150,
      ),
      splashTransition: SplashTransition.scaleTransition,
    ));
  }
}
