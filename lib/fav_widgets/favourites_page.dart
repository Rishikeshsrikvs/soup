// favourites_page.dart
import 'package:flutter/material.dart';
import 'package:test_app/homewidgets/widgets/bottom_navigation_widget.dart';

class FavouritesPage extends StatelessWidget {
  const FavouritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous page
          },
        ),
        title: const Text('Favourites'),
        backgroundColor: const Color(0xFFB3F94A), // Light green color
      ),
      body: Column(
        children: [
          // Tab section for 'Restaurant' and 'Food Items'
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            color: const Color(0xFFB3F94A), // Light green background
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle 'Restaurant' button functionality
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black, // Dark button color
                  ),
                  child: const Text(
                    'RESTAURANT',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    // Handle 'Food Items' button functionality
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, // Light button color
                  ),
                  child: const Text(
                    'FOOD ITEMS',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),

          // Restaurant List Section
          Expanded(
            child: ListView(
              children: [
                Card(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: ListTile(
                    leading: Image.asset(
                      'assest/image33.png', // Replace with your image asset
                      width: 60,
                      height: 60,
                    ),
                    title: const Text(
                      'Kim Ling Chinese Restaurant',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Anna Nagar, Chennai'),
                        const SizedBox(height: 5),
                        Row(
                          children: const [
                            Icon(Icons.delivery_dining, size: 18),
                            SizedBox(width: 5),
                            Text('30 Mins'),
                            SizedBox(width: 20),
                            Icon(Icons.location_on, size: 18),
                            SizedBox(width: 5),
                            Text('2.3 Km'),
                          ],
                        ),
                      ],
                    ),
                    trailing: const Icon(Icons.favorite_border),
                  ),
                ),
                // Add more cards here as needed
              ],
            ),
          ),
        ],
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
