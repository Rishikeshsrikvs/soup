import 'package:flutter/material.dart';
import 'order_img.dart'; // Import the image widget

class OrderPage extends StatelessWidget {
  const OrderPage({super.key}); // Fixed constructor name

  @override
  Widget build(BuildContext context) {
    // Get the screen's height and width for responsiveness
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[800], // Background for outer container
      body: Center(
        child: Container(
          height: screenHeight * 0.9, // Adjust height to 90% of the screen
          width: screenWidth * 0.9, // Adjust width to 90% of the screen
          margin: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.05), // Responsive margin
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: screenHeight * 0.02), // Responsive spacing
              Text(
                "Get Updates On Your Order",
                style: TextStyle(
                  fontSize: screenHeight * 0.03, // Responsive font size
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: screenHeight * 0.01), // Responsive spacing
              Text(
                "Allow push notifications to get real-time updates on your order status.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: screenHeight * 0.02, // Responsive font size
                  color: Colors.grey[600],
                ),
              ),
              // Responsive spacing
              const Expanded(
                child: Center(child: OrderImg()), // Center image
              ),
              // Responsive spacing
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Handle location access logic
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                            255, 144, 238, 144), // Light green color
                        padding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.01, // Responsive padding
                          horizontal: screenHeight *
                              0.05, // Additional horizontal padding
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      child: FittedBox(
                        // Ensures text fits within the button
                        child: Text(
                          "Turn on Notification",
                          style: TextStyle(
                            fontSize:
                                screenHeight * 0.021, // Responsive font size
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02), // Responsive spacing
                    GestureDetector(
                      onTap: () {
                        // Handle manual location entry
                      },
                      child: Text(
                        "Not Now",
                        style: TextStyle(
                          fontSize: screenHeight * 0.02, // Responsive font size
                          color: const Color.fromARGB(255, 0, 19, 3),
                          fontWeight: FontWeight.bold, // Make the text bold
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02), // Responsive spacing
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
