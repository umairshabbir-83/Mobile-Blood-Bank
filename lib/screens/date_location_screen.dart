import 'package:flutter/material.dart';

class DateLocation extends StatelessWidget {
  const DateLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Date and Location',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
