import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    // _navigatetohome();
  }

  // _navigatetohome() async {
  //   await Future.delayed(const Duration(seconds: 5));
  //   Navigator.pushReplacement(
  //       context, MaterialPageRoute(builder: (context) => const MyHomeScreen()));
  // }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(
            'assets/logo/MBB.png',
            height: 66,
            width: 66,
          ),
          const Text(
            'Right Blood',
            style: TextStyle(
              color: Colors.redAccent,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
