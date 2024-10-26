import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade600,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade600,
        elevation: 0,
        title: const Text(
          'Settings',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        children: [
          ListTile(
            title: const Text(
              'Notification Settings',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.white70, size: 16),
            onTap: () {
              // Navigate to Notification Settings Page
            },
          ),
          Divider(color: Colors.white70, thickness: 0.5),
          ListTile(
            title: const Text(
              'Account Settings',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.white70, size: 16),
            onTap: () {
              // Navigate to Account Settings Page
            },
          ),
          Divider(color: Colors.white70, thickness: 0.5),
        ],
      ),
    );
  }
}
