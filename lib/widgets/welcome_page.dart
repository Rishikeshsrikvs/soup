import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Soup Boys App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const WelcomeLoginPage(),
    );
  }
}

class WelcomeLoginPage extends StatefulWidget {
  const WelcomeLoginPage({super.key});

  @override
  _WelcomeLoginPageState createState() => _WelcomeLoginPageState();
}

class _WelcomeLoginPageState extends State<WelcomeLoginPage> {
  bool _isLogin = false; // To toggle between welcome and login sections

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Set background to light grey
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Upper Grey Container
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.grey[350], // Light grey color as a placeholder
            ),
          ),

          // Welcome Section
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Centering the text and image
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'WELCOME TO SOUP BOYS',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center, // Center the text
                      ),
                      
                      Image.asset(
                        'assest/img33.png', // Replace with your image asset path
                        height: 80,
                        width: 80,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Login Button with fixed width
                  SizedBox(
                    width: 300, // Set a fixed width for the button
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _isLogin = true; // Switch to login section
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF0A1A0A),
                        padding: const EdgeInsets.symmetric(
                          vertical: 14,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 5,
                      ),
                      child: const Text(
                        'Login With Mobile Number',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Sign Up Button with fixed width
                  SizedBox(
                    width: 300, // Set a fixed width for the button
                    child: OutlinedButton(
                      onPressed: () {
                        // Implement sign-up functionality or navigation here
                      },
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          vertical: 14,
                        ),
                        side: const BorderSide(
                          color: Colors.lightGreen, // Light green outline
                          width: 2.0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.lightGreen,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
