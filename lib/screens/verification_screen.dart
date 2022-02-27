import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mobile_blood_bank/screens/verified.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contact Number Verification',
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
                  'assets/animations/verification-code.json',
                  height: 280,
                  width: 280,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'e.g XXXX',
                    icon: Icon(Icons.lock),
                    labelText: 'Enter your OTP',
                  ),
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value?.length != 4) {
                      return 'Must be 4 Digits!';
                    } else {
                      return null;
                    }
                  },
                ),
                ElevatedButton(
                  child: const Text('Confirm OTP'),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Verified()));
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
