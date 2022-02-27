import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mobile_blood_bank/screens/verification_screen.dart';

class ContactNumber extends StatefulWidget {
  const ContactNumber({Key? key}) : super(key: key);

  @override
  State<ContactNumber> createState() => _ContactNumberState();
}

class _ContactNumberState extends State<ContactNumber> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contact Number',
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
                  'assets/animations/contact-number-icon.json',
                  height: 280,
                  width: 280,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'e.g +92 3XX XXX XXXX',
                    icon: Icon(Icons.phone),
                    labelText: 'How do we contact you?',
                  ),
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value?.length != 11) {
                      return 'Must be 11 Digits!';
                    } else {
                      return null;
                    }
                  },
                ),
                ElevatedButton(
                  child: const Text('Get OTP'),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const VerificationScreen()));
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
