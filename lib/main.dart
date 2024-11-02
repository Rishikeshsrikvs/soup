import 'package:flutter/material.dart';
import 'package:test_app/address_screen/screens/address_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Disable the debug banner
      theme: ThemeData(
        primarySwatch: Colors.blue, // Set a primary theme color
      ),

      home: AddressScreen(), // Removed const here
    );
  }
}
