import 'package:flutter/material.dart';
import 'package:practical3/assignment1.dart';
import 'package:practical3/assignment2.dart';
import 'package:practical3/assignment3.dart';
import 'package:practical3/assignment4.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:Assignment4()
    );
  }
}
