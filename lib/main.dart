import 'package:flutter/material.dart';
import 'package:test_app/fav_widgets/favourites_page.dart';
import 'package:test_app/shopkeeper/shop%20account/shop_ex.dart';
import 'package:test_app/shopkeeper/shop%20account/shop_history.dart';
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
import 'shopkeeper/Shop_dashboard.dart';
import 'shopkeeper/shop account/shop_profile.dart';
import 'shopkeeper/shop account/shop_AccountDetails.dart';

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
      home:  Myex(), // Removed const here
    );
  }
}
