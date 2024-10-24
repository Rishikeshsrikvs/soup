import 'package:flutter/material.dart';

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
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assest/image22.png', // Replace with your image asset
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Kim Ling Chinese Restaurant',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Anna Nagar, Chennai',
                                style: TextStyle(fontSize: 14),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Icon(Icons.timer, size: 16),
                                  SizedBox(width: 5),
                                  Text('30 Min',
                                      style: TextStyle(fontSize: 14)),
                                  SizedBox(width: 10),
                                  Icon(Icons.star, size: 16),
                                  SizedBox(width: 5),
                                  Text('3.5 KM',
                                      style: TextStyle(fontSize: 14)),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Icon(Icons.favorite, color: Colors.red),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          // Bottom Navigation
          Container(
            color: const Color(0xFFBAD81E),
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: const Icon(Icons.home),
                  onPressed: () {
                    // Navigate to Home
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.favorite),
                  onPressed: () {
                    // Navigate to Favourites
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.shopping_cart),
                  onPressed: () {
                    // Navigate to Cart
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}