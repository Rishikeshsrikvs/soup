import 'package:flutter/material.dart';
import 'homewidgets/home_page.dart';
import 'Loc';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
