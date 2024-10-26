import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History'),
        backgroundColor: Colors.lightGreen,
        leading: Icon(Icons.arrow_back),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search by restaurant or dish',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildOrderCard(
                    'Hotel Name', '1 Sep, 7:52 PM', 'Delivered', 763.18),
                _buildOrderCard('Hotel Name', '1 Sep, 7:52 PM',
                    'Payment Incomplete', 250.80,
                    isIncomplete: true),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOrderCard(
      String hotelName, String date, String status, double amount,
      {bool isIncomplete = false}) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  color: Colors.grey[300], // Placeholder for hotel image
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(hotelName,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text('Location'), // Placeholder for location text
                  ],
                ),
                Spacer(),
                Icon(Icons.more_vert),
              ],
            ),
            SizedBox(height: 8),
            Text('Order placed on $date'),
            SizedBox(height: 4),
            Text('Status: $status',
                style:
                    TextStyle(color: isIncomplete ? Colors.red : Colors.green)),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Amount: ₹$amount'),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(isIncomplete ? 'Complete Payment' : 'Reorder'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isIncomplete ? Colors.red : Colors.green,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
