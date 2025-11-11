import 'package:ali_khazaal_khanafer/screens/home_screen.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const Cards());
}

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
