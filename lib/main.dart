import 'package:flutter/material.dart';
import 'package:mobile_blood_bank/palette/palette.dart';
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
      home: const SplashScreen(),
      theme: ThemeData(primarySwatch: Palette.toLight),
      title: 'Mobile Blood Bank',
    );
  }
}
