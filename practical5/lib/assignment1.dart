import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Container image"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 251, 2, 2),
      ),
      body: Center(
        child: Container(
          height: 468,
          width: 286,
          child: Image.network("https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTy5RYAuojXDARoaPBmukXLHj44QNn5dU4SzohSvzsobU4jFwh6"),
        ),

      ),
    );
  }
}