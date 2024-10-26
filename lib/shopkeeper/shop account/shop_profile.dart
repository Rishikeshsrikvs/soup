import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade600,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade600,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.close, color: Colors.white), // Exit icon
            onPressed: () {
              // Handle exit action
              Navigator.pop(context); // Example action: go back to previous screen
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(26.0), // Padding added only for the body of Scaffold
        child: Column(
          children: [
            SizedBox(height: 20),
            Image.asset(
              'assets/image.png', // Replace with your logo asset
              height: 70,
            ),
            SizedBox(height: 16), // Space between logo and profile card
            // User profile section
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0), // Padding inside the profile card
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey.shade300,
                          child: Icon(Icons.person, size: 50, color: Colors.white),
                        ),
                        SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "USERNAME",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text("username@gmail.com", style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(height: 1),
                  ListTile(
                    leading: Icon(Icons.account_circle), // Icon added here
                    title: Text("Account Details"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Handle navigation
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // "Others" section
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.menu, color: Colors.red),
                    title: Text("Menu Management"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Handle navigation
                    },
                  ),
                  Divider(height: 1),
                  ListTile(
                    leading: Icon(Icons.payment, color: Colors.red),
                    title: Text("Payment History"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Handle navigation
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // "More" section
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.info),
                    title: Text("About"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Handle navigation
                    },
                  ),
                  Divider(height: 1),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("Settings"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Handle navigation
                    },
                  ),
                  Divider(height: 1),
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: Text("Log out"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Handle log out
                    },
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
