import 'package:flutter/material.dart';

class OrdersContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title and Header
          Text(
            'Orders',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          _buildOrderHeader(), // Header with Today button
          SizedBox(height: 20),
          
          // List of Orders
          Expanded(
            child: ListView(
              children: [
                _buildOrderCard(
                  orderId: '#5343435',
                  customerName: 'M S Gandhi',
                  phoneNumber: '2356891470',
                  location: 'Address',
                  itemList: ['Item 1', 'Item 2', 'Item 3'],
                  totalAmount: '400',
                  status: 'Confirm',
                  statusColor: Colors.green,
                  statusTextColor: Colors.white,
                  denyColor: Colors.red,
                  statusIcon: Icons.check_circle,
                ),
                _buildOrderCard(
                  orderId: '#5343435',
                  customerName: 'M S Gandhi',
                  phoneNumber: '2356891470',
                  location: 'Address',
                  itemList: ['Item 1', 'Item 2', 'Item 3'],
                  totalAmount: '400',
                  status: 'Cooking',
                  statusColor: Colors.orange,
                  statusTextColor: Colors.white,
                  denyColor: Colors.red,
                  statusIcon: Icons.access_time,
                ),
                _buildOrderCard(
                  orderId: '#5343435',
                  customerName: 'M S Gandhi',
                  phoneNumber: '2356891470',
                  location: 'Address',
                  itemList: ['Item 1', 'Item 2', 'Item 3'],
                  totalAmount: '400',
                  status: 'On Delivery',
                  statusColor: Colors.blue,
                  statusTextColor: Colors.white,
                  denyColor: Colors.red,
                  statusIcon: Icons.delivery_dining,
                ),
                _buildOrderCard(
                  orderId: '#5343435',
                  customerName: 'M S Gandhi',
                  phoneNumber: '2356891470',
                  location: 'Address',
                  itemList: ['Item 1', 'Item 2', 'Item 3'],
                  totalAmount: '400',
                  status: 'Delivered',
                  statusColor: Colors.green,
                  statusTextColor: Colors.white,
                  denyColor: Colors.red,
                  statusIcon: Icons.check_circle,
                ),
                _buildOrderCard(
                  orderId: '#5343435',
                  customerName: 'M S Gandhi',
                  phoneNumber: '2356891470',
                  location: 'Address',
                  itemList: ['Item 1', 'Item 2', 'Item 3'],
                  totalAmount: '400',
                  status: 'Cancelled',
                  statusColor: Colors.red,
                  statusTextColor: Colors.white,
                  denyColor: Colors.red,
                  statusIcon: Icons.cancel,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Header with the "Today" button
  Widget _buildOrderHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.calendar_today),
          label: Text('Today'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
          ),
        ),
      ],
    );
  }

  // Order Card Widget
  Widget _buildOrderCard({
    required String orderId,
    required String customerName,
    required String phoneNumber,
    required String location,
    required List<String> itemList,
    required String totalAmount,
    required String status,
    required Color statusColor,
    required Color statusTextColor,
    required Color denyColor,
    required IconData statusIcon,
  }) {
    return Card(
      color: Color(0xFF1E1C38), // Dark background for cards
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Order Info Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Order ID: $orderId',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'Location: $location',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 10),
            // Customer Info Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Customer: $customerName',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'Phone: $phoneNumber',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 10),
            // Item List
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: itemList
                  .map((item) => Text(
                        item,
                        style: TextStyle(color: Colors.white),
                      ))
                  .toList(),
            ),
            SizedBox(height: 10),
            // Total Amount and Status Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total: ₹ $totalAmount',
                  style: TextStyle(color: Colors.red, fontSize: 16),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(statusIcon, color: statusTextColor),
                      label: Text(status),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: statusColor,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Deny',
                        style: TextStyle(color: denyColor),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
