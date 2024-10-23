import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen', style: TextStyle(fontSize: 28)),
      ),
      body: Center(
        child: Text('Welcome to the home screen!', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
