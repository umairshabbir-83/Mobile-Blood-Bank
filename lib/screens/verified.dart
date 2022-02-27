import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mobile_blood_bank/screens/request_screen.dart';

class Verified extends StatefulWidget {
  const Verified({Key? key}) : super(key: key);

  @override
  State<Verified> createState() => _VerifiedState();
}

class _VerifiedState extends State<Verified> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contact Number Verified',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                LottieBuilder.asset(
                  'assets/animations/verification.json',
                  height: 280,
                  width: 280,
                ),
                ElevatedButton(
                  child: const Text('Access Request Form'),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RequestScreen()));
                    }
                  },
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            ),
            height: 520,
            width: 480,
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
