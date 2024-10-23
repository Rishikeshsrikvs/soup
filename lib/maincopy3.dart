import 'dart:ffi';

import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String value = 'test';
  void click (){
    setState(() {
      value = "rishi";
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Column(
          children: [
            Text('$value'),
            FloatingActionButton(
              onPressed: click,
              child: Icon(Icons.add),
            )
            
          ],
        ),
      ),
    );
  }
}