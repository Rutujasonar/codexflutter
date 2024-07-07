import 'package:flutter/material.dart';

class assignment2 extends StatelessWidget {
  const assignment2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Row"),
        centerTitle: true, 
        leading: Icon(Icons.arrow_back_ios_new),
        actions: [Icon(Icons.bluetooth_connected_rounded)],
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.limeAccent,

            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.limeAccent,
            )
          ],
        ),
      ),
    );
  }
}