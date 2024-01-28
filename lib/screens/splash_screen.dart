import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_blood_bank/palette/palette.dart';
import 'package:mobile_blood_bank/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      backgroundColor: const Color.fromARGB(150, 225, 225, 225),
      // loaderColor: Palette.toLight,
      logo: Image.asset(
        'assets/logo/foreground.png',
      ),
      logoWidth: 120,
      navigator: const LoginScreen(),
      showLoader: false,
      loadingText: Text(
        "Mobile Blood Bank",
        style: GoogleFonts.aBeeZee(
          textStyle: const TextStyle(
            color: Palette.toLight,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            letterSpacing: .32,
            wordSpacing: .67,
          ),
        ),
      ),
    );
  }
}
