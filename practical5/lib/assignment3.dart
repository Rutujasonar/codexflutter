import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget {
  const Assignment3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("container image with horizontal scroll"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 254, 3, 3),
      ),
      body: Center(
        child: SingleChildScrollView(scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              height: 206,
              width:201 ,
              child: Image.network("https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTy5RYAuojXDARoaPBmukXLHj44QNn5dU4SzohSvzsobU4jFwh6"),
            ),
            Container(
              height: 206,
              width: 201,
              child: Image.network("https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTy5RYAuojXDARoaPBmukXLHj44QNn5dU4SzohSvzsobU4jFwh6"),
            )
          ],
        ),),
        
      ),
    );
  }
}