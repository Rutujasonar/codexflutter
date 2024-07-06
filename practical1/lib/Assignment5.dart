import 'package:flutter/material.dart';

class Assignment5 extends StatelessWidget {
  const Assignment5({super.key});

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
        child: Text('demo'),
      )
    );
  }
}