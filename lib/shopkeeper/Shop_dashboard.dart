import 'package:flutter/material.dart';


class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF15132B), // Background color from the image
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Owner Info and logo
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.menu, color: Colors.white),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Owner Name',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Hotel Name',
                          style: TextStyle(color: Colors.white60),
                        ),
                      ],
                    ),
                  ],
                ),
                // Logo
                Container(
                  width: 60,
                  height: 60,
                  child: Image.asset("assets/image.png"),
                ),
              ],
            ),
            SizedBox(height: 30),
            // Dashboard title
            Text(
              'Dashboard',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            // Stats Row (Total Menu, Total Orders, Total Revenue)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StatCard(
                  title: 'TOTAL MENU',
                  count: '13',
                  icon: Icons.menu_book,
                  backgroundColor: Colors.purple,
                ),
                StatCard(
                  title: 'TOTAL ORDER',
                  count: '13',
                  icon: Icons.receipt,
                  backgroundColor: Colors.orange,
                ),
              ],
            ),
            SizedBox(height: 10),
            StatCard(
              title: 'TOTAL REVENUE',
              count: '₹ 15,000',
              icon: Icons.attach_money,
              backgroundColor: Colors.yellow,
              textColor: Colors.red,
            ),
            SizedBox(height: 20),
            // Order Summary
            Text(
              'Order Summary',
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 10),
            OrderSummaryCard(),
            SizedBox(height: 20),
            // Transactions Summary
            Text(
              'Transactions Summary',
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 10),
            TransactionSummaryCard(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

// StatCard for displaying Total Menu, Total Orders, etc.
class StatCard extends StatelessWidget {
  final String title;
  final String count;
  final IconData icon;
  final Color backgroundColor;
  final Color? textColor;

  StatCard({
    required this.title,
    required this.count,
    required this.icon,
    required this.backgroundColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: Colors.white),
            SizedBox(height: 10),
            Text(
              count,
              style: TextStyle(
                color: textColor ?? Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

// OrderSummaryCard for the blue card with order summary details
class OrderSummaryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFF007AFF), // Blue background color
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '₹ 15,000',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Text('Today', style: TextStyle(color: Colors.black)),
                    Icon(Icons.arrow_drop_down, color: Colors.black),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            '85% On Delivery',
            style: TextStyle(color: Colors.white70),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SummaryStat(count: '25', label: 'On Delivery', color: Colors.orange),
              SummaryStat(count: '60', label: 'Delivered', color: Colors.green),
              SummaryStat(count: '7', label: 'Canceled', color: Colors.red),
            ],
          ),
        ],
      ),
    );
  }
}

// SummaryStat for displaying small summary stats like On Delivery, Delivered, Canceled
class SummaryStat extends StatelessWidget {
  final String count;
  final String label;
  final Color color;

  SummaryStat({required this.count, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count,
          style: TextStyle(color: color, fontWeight: FontWeight.bold),
        ),
        Text(
          label,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}

// TransactionSummaryCard for successful/unsuccessful orders
class TransactionSummaryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TransactionStat(
          count: '585',
          label: 'Successful Orders',
          color: Colors.green,
        ),
        TransactionStat(
          count: '123',
          label: 'Unsuccessful Orders',
          color: Colors.red,
        ),
      ],
    );
  }
}

// TransactionStat for individual stats in TransactionSummaryCard
class TransactionStat extends StatelessWidget {
  final String count;
  final String label;
  final Color color;

  TransactionStat({required this.count, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: color),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              count,
              style: TextStyle(
                  color: color, fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 5),
            Text(
              label,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

// Bottom Navigation Bar
class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color(0xFF222244), // Dark background color
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.receipt_long, color: Colors.white),
          label: 'Orders',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.grid_view, color: Colors.white),
          label: 'Dashboard',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.attach_money, color: Colors.white),
          label: 'Earnings',
        ),
      ],
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.white70,
    );
  }
}
