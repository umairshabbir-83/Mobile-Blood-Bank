import 'package:flutter/material.dart';
import 'package:mobile_blood_bank/screens/date_location_screen.dart';

class RequestScreen extends StatefulWidget {
  const RequestScreen({Key? key}) : super(key: key);

  @override
  State<RequestScreen> createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Request Blood',
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
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'e.g ABC XYZ',
                    icon: Icon(Icons.person),
                    labelText: 'How do we call you?',
                  ),
                  // keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value?.length != 3) {
                      return 'Enter Valid Name!';
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'e.g ABC XYZ',
                    icon: Icon(Icons.person_add),
                    labelText: 'Patient Name',
                  ),
                  // keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value?.length != 3) {
                      return 'Enter Valid Name!';
                    } else {
                      return null;
                    }
                  },
                ),
                ElevatedButton(
                  child: const Text('Proceed Request'),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DateLocation()));
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
