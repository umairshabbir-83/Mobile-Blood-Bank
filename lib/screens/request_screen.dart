import 'package:flutter/material.dart';
import 'package:mobile_blood_bank/screens/date_location_screen.dart';

class RequestScreen extends StatefulWidget {
  const RequestScreen({Key? key}) : super(key: key);

  @override
  State<RequestScreen> createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {
  final _formKey = GlobalKey<FormState>();
  double _bloodBottles = 2;
  String _bloodType = 'A-';
  var type = [
    'A-',
    'AB-',
    'B-',
    'O-',
    'A+',
    'AB+',
    'B+',
    'O+',
  ];
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
                  validator: (value) {
                    if (value == null || value.isEmpty) {
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
                    icon: Icon(Icons.sick),
                    labelText: 'Patient Name',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter Valid Name!';
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'e.g Anemia',
                    icon: Icon(Icons.description),
                    labelText: 'Condition',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter Valid Condition!';
                    } else {
                      return null;
                    }
                  },
                ),
                Row(
                  children: [
                    const Text(
                      'Required Blood Type',
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    DropdownButton(
                      borderRadius: BorderRadius.circular(12),
                      elevation: 12,
                      icon: const Icon(Icons.bloodtype),
                      items: type.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          _bloodType = newValue!;
                        });
                      },
                      value: _bloodType,
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                ),
                Row(
                  children: [
                    const Text(
                      'Required Blood Bottles',
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Slider(
                      divisions: 5,
                      label: '${_bloodBottles.round()}',
                      max: 5,
                      min: 1,
                      onChanged: (value) {
                        setState(() {
                          _bloodBottles = value;
                        });
                      },
                      value: _bloodBottles,
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width * 0.9,
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
