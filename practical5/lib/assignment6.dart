import 'package:flutter/material.dart';

class Assignment6 extends StatelessWidget {
  const Assignment6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Box decoration image scroll"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: SingleChildScrollView(scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              width: 212,
            height: 204,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTy5RYAuojXDARoaPBmukXLHj44QNn5dU4SzohSvzsobU4jFwh6"), // Replace with your image URL
                fit: BoxFit.cover,
              ),
             
              borderRadius: BorderRadius.circular(100),
              
            ),

            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              width: 212,
            height: 204,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTy5RYAuojXDARoaPBmukXLHj44QNn5dU4SzohSvzsobU4jFwh6"), // Replace with your image URL
                fit: BoxFit.cover,
              ),
             
              borderRadius: BorderRadius.circular(100),
              
            ),

            ),
          ],
        ),),
      ),
    );
  }
}