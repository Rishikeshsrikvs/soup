// login_page.dart
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back action here
          },
        ),
        backgroundColor: Colors.white, // White AppBar background
        elevation: 0, // No shadow
        centerTitle: true, // Center the title (logo)
        title: Image.asset(
          'assest/soupimg.png', // Replace with your logo path
          width: 100,
          height: 70,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, // Centers horizontally
          children: <Widget>[
            const SizedBox(height: 20), // Add some space after AppBar

            // Title
            const Text(
              'Enter Your Mobile Number To Get OTP',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            // Mobile number input
            TextField(
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(
                    color: Colors
                        .lightGreen, // Set the border color to light green
                    width: 2.0, // Set the width of the border
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(
                    color: Colors
                        .lightGreen, // Light green border when the field is enabled
                    width: 2.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(
                    color: Colors
                        .green, // Darker green border when the field is focused
                    width: 2.0,
                  ),
                ),
                labelText: 'Enter Phone Number',
                prefixIcon: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text(
                    '+91',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
                prefixIconConstraints:
                    const BoxConstraints(minWidth: 0, minHeight: 0),
              ),
            ),

            const SizedBox(height: 20),

            // Get OTP button
            ElevatedButton(
              onPressed: () {
                // Logic to send OTP goes here
                Navigator.pushNamed(context, '/otp-verification');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color.fromARGB(255, 5, 27, 6), // Green button color
                padding:
                    const EdgeInsets.symmetric(horizontal: 120, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Get OTP',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white, // Set text color to white
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Terms and Privacy
            const Text.rich(
              TextSpan(
                text: 'By Clicking, I Accept The ',
                children: [
                  TextSpan(
                    text: 'Terms Of Service',
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                  TextSpan(text: ' And '),
                  TextSpan(
                    text: 'Privacy Policy',
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
