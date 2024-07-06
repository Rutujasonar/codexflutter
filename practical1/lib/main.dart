import 'package:flutter/material.dart';
import 'package:practical1/Assignment3.dart';
import 'package:practical1/Assignment4.dart';
import 'package:practical1/Assignment5.dart';
import 'package:practical1/Assignment6.dart';
import 'package:practical1/Assignment7.dart';
import 'package:practical1/assignment1.dart';
import 'package:practical1/assignment2.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Assignment7()
    );
  }
}
