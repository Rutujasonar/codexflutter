import 'dart:js_interop';

import 'package:flutter/material.dart';

class Box extends StatefulWidget {
  const Box({super.key});

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  bool boxcolor=true;

 
  @override
  Widget build(BuildContext context) {
    print("build method called");
    return Scaffold(
      appBar: AppBar(
        title: Text("Box color"),
      ),
      body:Column(
        children: [
          Container(
            height: 200,
            width: 200,
            color:boxcolor ? Colors.red : Colors.green,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        print("button pressed");
        if (boxcolor) {
          boxcolor=false;
        } else {
          boxcolor=true;
        }
        setState(() {
          
        });
      },
      backgroundColor:boxcolor ? Colors.red : Colors.blue,
      ),
           );
          
        
  }
}