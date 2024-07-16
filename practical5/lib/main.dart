import 'package:flutter/material.dart';
import 'package:practical5/assignment1.dart';
import 'package:practical5/assignment2.dart';
import 'package:practical5/assignment3.dart';
import 'package:practical5/assignment4.dart';
import 'package:practical5/assignment5.dart';
import 'package:practical5/assignment6.dart';
import 'package:practical5/assignment7.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Assignment7(),
      
    );
  }
}
