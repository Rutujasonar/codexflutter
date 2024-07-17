import 'package:flutter/material.dart';
import 'package:practical6/assignment1.dart';
import 'package:practical6/assignment2.dart';
import 'package:practical6/assignment3.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Assignment3()
    );
  }
}
