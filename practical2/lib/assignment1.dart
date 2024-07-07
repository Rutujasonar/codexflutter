import 'package:flutter/material.dart';

class assignment1 extends StatelessWidget {
  const assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 230, 245, 21),
        title: Text("Row"),
        centerTitle: true,
        actions: [Icon(Icons.heart_broken)],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
            Container(
              color: Color.fromARGB(255, 164, 23, 124),
              height: 100,
              width: 100,
            ),
            Container(
              color: Color.fromARGB(255, 168, 24, 24),
              height: 100,
              width: 100,
            )
           ],
      ),
    );
  }
}