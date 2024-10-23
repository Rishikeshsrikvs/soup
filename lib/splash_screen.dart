import 'dart:async';
import 'package:flutter/material.dart';
import 'home_screen.dart'; // Import the HomeScreen file

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to HomeScreen after 5 seconds
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set background color
      body: Center(
        child: Image.asset(
          'assets/image.png', // Load splash image
          width: 200, 
          height: 200, // Adjust size of the image
        ),
      ),
    );
  }
}
