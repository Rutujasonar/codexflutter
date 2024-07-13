import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget {
  const Assignment3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text("Row"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
       ),
       body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.purple,

            ),
            Text("purple"),
            Container(
              height: 100,
              width: 100,
              color: Colors.purple,

            ),
            Text("purple"),
            Container(
              height: 100,
              width: 100,
              color: Colors.purple,
            ),
            Text("Purple"),
          ],
        ),
       ),
    );
  }
}