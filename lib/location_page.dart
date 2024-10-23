import 'package:app/location_image_widget.dart';
import 'package:flutter/material.dart';
import 'order_page.dart'; // Import the OrderPage

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

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
                "What’s Your Location?",
                style: TextStyle(
                  fontSize: screenHeight * 0.03, // Responsive font size
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: screenHeight * 0.01), // Responsive spacing
              Text(
                "We need your location to show available restaurants & products.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: screenHeight * 0.02, // Responsive font size
                  color: Colors.grey[600],
                ),
              ),
              const Expanded(
                child: Center(child: LocationImageWidget()), // Center image
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Navigate to OrderPage when button is pressed
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OrderPage()),
                        );
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
                        child: Text(
                          "Allow Location Access",
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
                        "Enter Location Manually",
                        style: TextStyle(
                          fontSize: screenHeight * 0.02, // Responsive font size
                          color: const Color.fromARGB(255, 0, 19, 3),
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
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
