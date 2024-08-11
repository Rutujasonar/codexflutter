import 'package:flutter/material.dart';

class screen2 extends StatelessWidget {
  final String name;
  const screen2({super.key,required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("$name"),
      ),
    );
  }
}