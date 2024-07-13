import 'package:flutter/material.dart';

class Assignment2 extends StatelessWidget {
  const Assignment2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,

      ),
      body: Column(
        
        children: [
        Row(children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(100)),
            color: Colors.pinkAccent),
            
          ),
         Text("Rutuja"),
            
          
        ],),
        Row(children: [
          Container(
            height: 5,
            width: 200,
            color: Colors.black,
          )
        ],

        ),
        
      ],
      ),
    );
  }
}