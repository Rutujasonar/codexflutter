import 'package:flutter/material.dart';
import 'package:practical7/Listview.dart';
import 'package:practical7/mycontainer.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Listview()
    );
  }
}
