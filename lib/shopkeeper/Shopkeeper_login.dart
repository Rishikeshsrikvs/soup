import 'package:flutter/material.dart';
import 'Shopkeeper_creation.dart';

class ShopkeeperLoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A1D28), // Set the background color as dark blue
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo widget
              Image.asset(
                'assets/image.png', // Replace with your logo asset
                height: 100,
              ),
              const SizedBox(height: 20),
              const Text(
                "Sign in to your Account",
                style: TextStyle(
                  color: Colors.white, // White text color
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.white54),
                  ),
                  TextButton(
                   onPressed: () {
                      // Navigate to Account Creation Page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AccountCreationPage(),
                        ),
                      );
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Email TextField
              Container(
  decoration: BoxDecoration(
    color: Colors.white, // Set background color for the entire container
    borderRadius: BorderRadius.circular(8),
  ),
  padding: const EdgeInsets.all(10), // Padding inside the container
  child: Column(
    children: [
      // Email TextField
      TextField(
        controller: emailController,
        style: const TextStyle(color: Colors.black), // Text input color
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.transparent, // Background transparent within the container
          hintText: "shopkeeper@gmail.com",
          hintStyle: const TextStyle(color: Colors.black54),
          prefixIcon: const Icon(Icons.email, color: Colors.black),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
        ),
      ),
      const SizedBox(height: 10), // Space between the fields
      // Password TextField
      TextField(
        controller: passwordController,
        style: const TextStyle(color: Colors.black),
        obscureText: true, // Obscure password input
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.transparent,
          hintText: "********",
          hintStyle: const TextStyle(color: Colors.black54),
          prefixIcon: const Icon(Icons.lock, color: Colors.black),
          suffixIcon: IconButton(
            onPressed: () {
              // Toggle password visibility
            },
            icon: const Icon(Icons.visibility, color: Colors.black),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    ],
  ),
),

              const SizedBox(height: 10),
              Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    // Forgot password action
                  },
                  child: const Text(
                    "Forgot Your Password?",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Login button
              ElevatedButton(
                onPressed: () {
                  // Shopkeeper login action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent, // Button color
                  padding: const EdgeInsets.symmetric(
                    horizontal: 140,
                    vertical: 15,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: const Text(
                  "Log In",
                  style: TextStyle(fontSize: 18,
                  color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

