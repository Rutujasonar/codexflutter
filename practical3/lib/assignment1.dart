import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            
            Container(
              height: 100,
              width: 100,
              color: Colors.amber,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.amber,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.amber,
            ),
          ],),
          Row
          (
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            
            Container(
              height: 100,
              width: 100,
              color: Colors.deepPurple
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.deepPurple,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.deepPurple,
            ),
          ],),],
        ),
      ),
    );
  }
}