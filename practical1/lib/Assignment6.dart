import 'package:flutter/material.dart';

class Assignment6 extends StatelessWidget {
  const Assignment6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('AppBar Demo'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          color: Colors.amber,
          height: 200,
          width: 200,
          child: Center(
            child: Text('demo')
            ),
        ),
      )
    );
  }
}