import 'package:flutter/material.dart';
import 'widgets/header_widget.dart';
import 'widgets/search_bar_widget.dart';
import 'widgets/offer_banner_widget.dart';
import 'widgets/category_buttons_widget.dart';
import 'widgets/restaurant_card_widget.dart';
import 'widgets/bottom_navigation_widget.dart';
import 'widgets/soup_container.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 90,  // Set a custom height for the AppBar
        title: HeaderWidget(), // Custom Header
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBarWidget(),
              SizedBox(height: 16),
              OfferBannerWidget(),
              SizedBox(height: 16),
              CategoryButtonsWidget(),
              SizedBox(height: 16),
              RestaurantListWidget(),
              SizedBox(height: 16),
              SoupContainer(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
