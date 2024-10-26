import 'package:flutter/material.dart';
import 'shop_dashboard_body.dart'; // Import your DashboardBody widget
import 'shopkeeper dashboard/dashboard_app_bar.dart';
import 'shop_orders.dart';
import 'shop_earnings.dart';
import 'shopkeeper dashboard/bottom_nav_bar.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF15132B),
        appBar: DashboardAppBar(), // Custom AppBar
        body: EarningsPage(), // Use the OrdersContainer directly
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}
