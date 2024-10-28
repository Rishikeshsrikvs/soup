import 'package:flutter/material.dart';



class OrderHistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Text("History"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search Bar
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search by restaurant or dish",
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            SizedBox(height: 20),

            // Hotel Order Containers
            Expanded(
              child: ListView(
                children: [
                  OrderCard(
                    hotelName: "Hotel A",
                    hotelLocation: "Location A",
                    orderDate: "11 Sep, 7:52 PM",
                    amount: "₹613.88",
                    rating: 3,
                  ),
                  SizedBox(height: 20),
                  OrderCard(
                    hotelName: "Hotel B",
                    hotelLocation: "Location B",
                    orderDate: "12 Sep, 8:30 PM",
                    amount: "₹450.00",
                    rating: 4,
                  ),
                  SizedBox(height: 20),
                  OrderCard(
                    hotelName: "Hotel C",
                    hotelLocation: "Location C",
                    orderDate: "13 Sep, 9:00 PM",
                    amount: "₹520.50",
                    rating: 5,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget for Order Card
class OrderCard extends StatelessWidget {
  final String hotelName;
  final String hotelLocation;
  final String orderDate;
  final String amount;
  final int rating;

  const OrderCard({
    required this.hotelName,
    required this.hotelLocation,
    required this.orderDate,
    required this.amount,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hotel Information
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.grey,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        hotelName,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        hotelLocation,
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                      SizedBox(height: 5),
                      GestureDetector(
                        onTap: () {
                          // View menu action
                        },
                        child: Text(
                          "View Menu",
                          style: TextStyle(
                            color: Colors.red[600],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.delete_outline, color: Colors.grey),
                  onPressed: () {
                    // Delete order action
                  },
                ),
              ],
            ),
            SizedBox(height: 10),

            // Order details
            Text("Order placed on $orderDate"),
            Text("Delivered", style: TextStyle(color: Colors.green)),

            Divider(),

            // Amount and Rating
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Amount: $amount",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text("You Rated "),
                    Icon(Icons.star, color: Colors.amber),
                    Text("$rating"),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),

            // Feedback and Reorder Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    // View feedback action
                  },
                  child: Text(
                    "View Your Feedback",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Reorder action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red[600],
                  ),
                  child: Text("Reorder"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
