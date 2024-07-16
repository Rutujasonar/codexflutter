import 'package:flutter/material.dart';

class Assignment4 extends StatelessWidget {
  const Assignment4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("box decoration"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Container(
          height:204 ,
          width:212 ,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(200),
          color: Colors.greenAccent),
          
        ),
      ),

    );
  }
}