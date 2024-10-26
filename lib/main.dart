import 'package:flutter/material.dart';
import 'package:test_app/about_screenwidgets/about_page.dart';
import 'package:test_app/extra_screenwidgets/%20No%20Internet%20Connection%20.dart';
import 'package:test_app/extra_screenwidgets/Call%20Screen.dart';
import 'package:test_app/extra_screenwidgets/Delivery%20Person%20Screen.dart';

import 'package:test_app/extra_screenwidgets/Item%20Not%20Found%20Screen.dart';
import 'package:test_app/extra_screenwidgets/Rate%20The%20Hotel.dart';
import 'package:test_app/extra_screenwidgets/google_maps.dart';
import 'package:test_app/fav_widgets/favourites_page.dart';
import 'package:test_app/history_widgets/history_screen.dart';
import 'package:test_app/history_widgets/order_screen.dart';
import 'package:test_app/order_page.dart';
import 'package:test_app/shopkeeper/shop%20account/shop_ex.dart';
import 'package:test_app/shopkeeper/shop%20account/shop_history.dart';
import 'package:test_app/widgets/otp_success_page.dart';
import 'package:test_app/widgets/otp_verification_page.dart';
import 'package:test_app/widgets/sign_up_page.dart';
import 'extra_screenwidgets/ExtraChargesScreen.dart';
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
      home: HistoryScreen(), // Removed const here
    );
  }
}
