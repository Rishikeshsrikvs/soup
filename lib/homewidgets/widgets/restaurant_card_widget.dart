import 'package:flutter/material.dart';

class RestaurantListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RestaurantCardWidget(
          imageUrl: 'https://example.com/restaurant1.png',
          restaurantName: 'Kim Ling Chinese Restaurant',
          rating: 4.0,
          time: '35 Mins',
          distance: '5 Km',
          location: 'Anna Nagar, Chennai',
          offerText: '₹100 Off Above ₹199',
        ),
        RestaurantCardWidget(
          imageUrl: 'https://example.com/restaurant2.png',
          restaurantName: 'The Cascade',
          rating: 4.0,
          time: '20 Mins',
          distance: '3.2 Km',
          location: 'Nungambakkam, Chennai',
          offerText: '₹100 Off Above ₹199',
        ),
        RestaurantCardWidget(
          imageUrl: 'https://example.com/restaurant3.png',
          restaurantName: 'Liza Restaurant',
          rating: 3.9,
          time: '30 Mins',
          distance: '4.7 Km',
          location: 'Vepery, Chennai',
          offerText: '₹100 Off Above ₹199',
        ),
      ],
    );
  }
}

class RestaurantCardWidget extends StatelessWidget {
  final String imageUrl;
  final String restaurantName;
  final double rating;
  final String time;
  final String distance;
  final String location;
  final String offerText;

  RestaurantCardWidget({
    required this.imageUrl,
    required this.restaurantName,
    required this.rating,
    required this.time,
    required this.distance,
    required this.location,
    required this.offerText,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.network(imageUrl, width: 80, height: 80, fit: BoxFit.cover),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(restaurantName, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.green, size: 16),
                    Text('$rating'),
                    SizedBox(width: 10),
                    Text(time),
                    SizedBox(width: 10),
                    Text(distance),
                  ],
                ),
                SizedBox(height: 5),
                Text(location, style: TextStyle(color: Colors.black54)),
                SizedBox(height: 5),
                Text(offerText, style: TextStyle(color: Colors.green)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
