import 'package:flutter/material.dart';
import 'package:test_app/homewidgets/widgets/bottom_navigation_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant Favourites',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const FavouritesPage(),
    );
  }
}

class FavouritesPage extends StatelessWidget {
  const FavouritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFBAD81E),
        elevation: 0,
        title: const Text(
          'Favourites',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Handle back action
          },
        ),
      ),
      body: Column(
        children: [
          Container(
            color: const Color(0xFFBAD81E),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle restaurant filter
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'RESTAURANT',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle food items filter
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      side: const BorderSide(color: Colors.black),
                    ),
                    child: const Text(
                      'FOOD ITEMS',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 1, // Set the number of restaurants
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xFFA4D107), // Light green background
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        // Image Section
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assest/image 22.png', // Updated image path
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 15),

                        // Text Section
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Kim Ling Chinese Restaurant',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(height: 8),
                              const Row(
                                children: [
                                  Icon(Icons.star,
                                      color: Colors.black, size: 18),
                                  SizedBox(width: 5),
                                  Text('4.0', style: TextStyle(fontSize: 10)),
                                  SizedBox(width: 5),
                                  Text('(127)', style: TextStyle(fontSize: 13)),
                                  SizedBox(width: 20),
                                  Icon(Icons.timer,
                                      size: 18, color: Colors.black),
                                  SizedBox(width: 5),
                                  Text('20 Mins',
                                      style: TextStyle(fontSize: 10)),
                                  SizedBox(width: 20),
                                  Icon(Icons.location_on,
                                      size: 18, color: Colors.black),
                                  SizedBox(width: 5),
                                  Text('3.2 Km',
                                      style: TextStyle(fontSize: 14)),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Container(
                                color: const Color.fromARGB(
                                    255, 0, 100, 0), // Dark green background
                                padding: const EdgeInsets.all(
                                    8), // Add padding if needed
                                child: Text(
                                  'ANNA NAGAR, CHENNAI',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors
                                        .white, // Change text color to white for better contrast
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(width: 10),

                        // Deal Section
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/img23.png'), // Update with your image path
                              fit: BoxFit.cover, // Adjust the fit as needed
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Column(
                            children: [
                              Text(
                                'Flat Deal',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                '₹100 Off',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Above ₹199',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          // Bottom Navigation
          BottomNavigationWidget(),
        ],
      ),
    );
  }
}
