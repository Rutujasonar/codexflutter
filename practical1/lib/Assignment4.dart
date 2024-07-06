import 'package:flutter/material.dart';

class Assignment4 extends StatelessWidget {
  const Assignment4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar Demo'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.amber,
        height: 200,
        width: 200,
      )
    );
  }
}