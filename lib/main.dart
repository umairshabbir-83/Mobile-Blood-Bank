import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:mobile_blood_bank/screens/home_screen.dart';
// import 'package:mobile_blood_bank/screens/request_screen.dart';
import 'package:mobile_blood_bank/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mobile Blood Bank',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        // home: const RequestScreen());
        home: AnimatedSplashScreen(
          duration: 3000,
          nextScreen: const MyHomeScreen(),
          splash: const Splash(),
          splashTransition: SplashTransition.scaleTransition,
        ));
  }
}
