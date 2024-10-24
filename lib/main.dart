import 'package:flutter/material.dart';
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
import 'fav_widgets/favourites_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FavouritesPage(),
    );
  }
}
