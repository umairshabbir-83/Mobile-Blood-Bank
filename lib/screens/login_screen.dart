import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_blood_bank/palette/palette.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final loginKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(150, 225, 225, 225),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Image.asset(
                'assets/logo/foreground.png',
                width: 210,
              ),
              Form(
                key: loginKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        icon: Icon(
                          Icons.alternate_email,
                          color: Palette.toLight,
                          size: 32.0,
                        ),
                        labelText: "Username",
                      ),
                      keyboardType: TextInputType.emailAddress,
                      style: GoogleFonts.aBeeZee(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: .32,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Hmm… that email doesn\'t look valid!';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 32.0,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        icon: Icon(
                          Icons.password,
                          color: Palette.toLight,
                          size: 32.0,
                        ),
                        labelText: "Password",
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      style: GoogleFonts.aBeeZee(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: .32,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Hmm… that password doesn\'t look valid!';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 67.0,
                    ),
                    ElevatedButton(
                      child: const Text(
                        'Login',
                      ),
                      onPressed: () {
                        if (loginKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('...')),
                          );
                        }
                      },
                      style: const ButtonStyle(
                        alignment: Alignment.center,
                        elevation: MaterialStatePropertyAll(5.0),
                      ),
                    ),
                  ],
                ),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
          height: MediaQuery.of(context).size.height * 0.67,
          width: MediaQuery.of(context).size.width * 0.67,
        ),
      ),
    );
  }
}
