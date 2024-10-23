import 'package:flutter/material.dart';

class LocationImageWidget extends StatelessWidget {
  const LocationImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height; // Get screen height
    final screenWidth = MediaQuery.of(context).size.width; // Get screen width

    return Image.asset(
      'assest/img34.png', // Make sure the path is correct (note the typo: 'assest' should be 'assets')
      width: screenWidth * 0.8, // Set width to 80% of the screen width
      height: screenHeight * 0.5, // Set height to 50% of the screen height
      fit: BoxFit.cover, // Ensures the image covers the entire widget area
    );
  }
}
