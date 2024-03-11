// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:storemonirh/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'Electrical store',
      theme: ThemeData(),
      home: HomeScreen(),
    );
  }
}

