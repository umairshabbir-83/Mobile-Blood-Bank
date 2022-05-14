import 'package:flutter/material.dart';
import 'package:mobile_blood_bank/screens/contact_number_screen.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 12,
        title: const Center(
            child: Text(
          'Mobile Blood Bank',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Image.asset(
                'assets/logo/MBB.PNG',
                height: 128,
                width: 128,
              ),
              Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    'Welcome to Right Blood',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'A Mobile Blood Bank!',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                child: const Text('Request Blood'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ContactNumber()));
                },
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
          height: 520,
          width: 480,
        ),
      ),
    );
  }
}
