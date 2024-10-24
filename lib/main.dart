import 'package:flutter/material.dart';
import 'package:test_app/fav_widgets/favourites_page.dart';
import 'package:test_app/widgets/otp_success_page.dart';
import 'package:test_app/widgets/otp_verification_page.dart';
import 'package:test_app/widgets/sign_up_page.dart';
import 'homewidgets/home_page.dart';
import 'widgets/login_page.dart';
import 'location_page.dart';
import 'otp_verification_page.dart';
import 'otp_success_page.dart';
import 'sign_up_page.dart';
import 'widgets/welcome_page.dart';
import 'splash_screen.dart';
import 'home_screen.dart';
import 'shopkeeper/Shopkeeper_login.dart';

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
<<<<<<< HEAD
      home: FavouritesPage(), // Removed const here
=======
      home: const FavouritesPage(), // Removed const here
>>>>>>> 87638e9a21c0b0deeaef2f75d947e27552af1806
    );
  }
}
