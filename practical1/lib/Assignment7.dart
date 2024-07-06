import 'package:flutter/material.dart';

class Assignment7 extends StatelessWidget {
  const Assignment7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar Demo'),
        backgroundColor: Colors.blue,
      ),
      body:Row(
        children: [
          Container(
            height:200,
            width: 200,
            color: Colors.black,
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.cyan,
          )
        ],
      )
    );
  }
}